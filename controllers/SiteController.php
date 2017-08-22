<?php

namespace app\controllers;

use app\models\Event;
use app\models\EventJoin;
use app\models\EventRating;
use app\models\EventSearch;
use app\models\Preferences;
use app\models\Profile;
use app\models\SearchForm;
use app\models\Speaker;
use app\models\SpeakerRating;
use app\models\User;
use Yii;
use yii\data\Pagination;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
//use app\models\LoginForm;
use app\models\ContactForm;
use yii\helpers\ArrayHelper;
use app\models\Category;
use app\models\EventType;
use app\models\SubCategory;
use yii\helpers\Json;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }


    /**
     * Advanced search page
     */
    public function actionAdvancedSearch() {
        $model = new EventSearch();
        $results = [];
        $results1 =[];
        $queryCount1 = [];
        $queryCount = [];
        $store_name = [];
        $store_data = [];
        $event = [];
        $queryCount1 = Event::find();
        $results1 = [];


        $pages = [];
        // get category list
        $categoryList = ArrayHelper::map(Category::findAll(['status' => 1]), 'id', 'category_name');
        $eventTypeList = ArrayHelper::map(EventType::find()->all(), 'id', 'event_type_name');

        if ($model->load(Yii::$app->request->get()) && $model->validate())
        {

            if(Yii::$app->user->identity != null) {


                $queryGetFaculty = Profile::find()->where(['=', 'user_id', Yii::$app->user->identity->getId()]);
                $queryGetPreference = Preferences::find()->where(['=', 'user_id', Yii::$app->user->identity->getId()]);

                $facultyId = $queryGetFaculty->all();
                $preference = new Preferences();
                $count = 0;

                foreach ($queryGetPreference->all() as $a => $b) {
                    $preference = $b;
                    $count = $queryGetPreference->count();
                }


                foreach ($facultyId as $a => $b) {
                    $fac = $b->faculty_id;
                }

                $queryGetFacultyUser = Profile::find()
                    ->select(['user_id'])
                    ->where(['=', 'faculty_id', $fac])
                    ->andWhere(['!=', 'user_id', Yii::$app->user->identity->getId()]);

                foreach ($queryGetFacultyUser->all() as $a => $b) {
                    $key = $b->user_id;

                    $queryName = Profile::find()
                        ->select(['name'])
                        ->where(['=', 'user_id', $key])->all();

                    foreach ($queryName as $c => $d) {
                        $store_name[$key] = $d->name;
                    }


                }

                $queryGetFacultyUserEvent = EventJoin::find()
                    ->select(['event_id'])
                    ->where(['IN', 'user_id', $queryGetFacultyUser]);

                $clone = clone $queryGetFacultyUserEvent;

                foreach ($clone = EventJoin::find()
                    ->select(['event_id', 'user_id'])
                    ->where(['IN', 'user_id', $queryGetFacultyUser])->all() as $a => $b) {
                    $key = $b->event_id;
                    $store_data[$key] = $b->user_id;
                }

                $query1 = Event::find();

                if ($count != 0) {
                    if ($preference->weekday == 1) {
                        $query1->andWhere(['<', 'WEEKDAY(start_date)', '6']);
                    }
                    if ($preference->aday >= 0) {
                        $query1->andWhere(['=', 'datediff(start_date,end_date)', $preference->aday]);
                    }
                    if ($preference->paid >= 0) {
                        $query1->orWhere(['like', 'fees', 'FREE']);
                    }

                    $query1
                        ->andWhere(['like', 'city', $preference->location])
                        ->orWhere(['=', 'speaker_id', $preference->speaker_id]);
                }

                $query1
                    ->andWhere(['>=', 'start_date', date('Y-m-d')])
                    ->andWhere(['IN', 'event.id', $queryGetFacultyUserEvent]);

                $cloneQuery = clone $query1;

                foreach ($cloneQuery->all() as $a => $b) {
                    array_push($event, $b->id);
                }
                $queryCount1 = clone $query1;
                $pages1 = new Pagination(['totalCount' => $queryCount1->count()]);
                $pages1->setPageSize(5);

                $results1 = $query1->offset($pages1->offset)
                    ->limit($pages->limit)
                    ->all();

            }
            $query = Event::find();

            if ($model->category_id) {
                $query->andFilterWhere(['category_id' => $model->category_id]);
            }

            if ($model->sub_category_id) {
                $query->andFilterWhere(['sub_category_id' => $model->sub_category_id]);
            }

            if ($model->search) {
                $query->where(['like', 'tags', $model->search]);
                $query->orWhere(['like', 'title', $model->search]);
            }

            if ($_GET['from'] != '') {
                $model->start_date = date('Y-m-d', strtotime($_GET['from']));
                $query->andWhere(['>=', 'start_date', $model->start_date]);
            }

            if ($_GET['to'] != '') {
                $model->start_date = date('Y-m-d', strtotime($_GET['to']));
                $query->andWhere(['<=', 'start_date', $model->start_date]);
            }

            $query->andWhere(['NOT IN', 'id', implode( ",", $event)]);
            $queryCount = clone $query;
            $pages = new Pagination(['totalCount' => $queryCount->count()]);
            $pages->setPageSize(10);



            $results = $query->offset($pages->offset)
                ->limit($pages->limit)
                ->orderBy(['rating_mark' => SORT_DESC, 'num_view' => SORT_DESC])
                ->all();


        }

            return $this->render('advanced_search', [
            'model' => $model,
            'results' => $results,
            'categoryList' => $categoryList,
            'eventTypeList' => $eventTypeList,
            'pages' => $pages,
            'queryCount' => $queryCount,
            'result' => $results1,
            'recommend' => $queryCount1,
            'storeEvent' => $store_data,
            'storeName' => $store_name,
        ]);
    } // end function

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $model = new SearchForm();
        $errors = [];
        $store_name = [];
        $store_data = [];
        $event = [];
        $queryCount1 = Event::find();
        $results1 = [];
        $events = Event::find()->where(['>', 'start_date', date('Y-m-d')])->limit(5)->orderBy(['start_date'=>SORT_ASC])->all();

        if ($model->load(Yii::$app->request->get()) && $model->validate()) {
            /**
             * Incoming event
             */
            // do search data here

            //get faculty similar faculty user (arraylist)
            $facultyUsers = [];

            if(Yii::$app->user->identity != null) {
                $queryGetFaculty = Profile::find()->where(['=', 'user_id', Yii::$app->user->identity->getId()]);
                $queryGetPreference = Preferences::find()->where(['=', 'user_id', Yii::$app->user->identity->getId()]);
                $facultyId = $queryGetFaculty->all();
                $preference = new Preferences();

                $count = 0;
                foreach ($queryGetPreference->all() as $a => $b) {
                    $preference = $b;
                    $count = $queryGetPreference->count();
                }

                foreach ($facultyId as $a => $b) {
                    $fac = $b->faculty_id;
                }

                $queryGetFacultyUser = Profile::find()
                    ->select(['user_id'])
                    ->where(['=', 'faculty_id', $fac])
                    ->andWhere(['!=', 'user_id', Yii::$app->user->identity->getId()]);

                foreach ($queryGetFacultyUser->all() as $a => $b) {
                    $key = $b->user_id;

                    $queryName = Profile::find()
                        ->select(['name'])
                        ->where(['=', 'user_id', $key])->all();

                    foreach ($queryName as $c => $d) {
                        $store_name[$key] = $d->name;
                    }


                }

                $queryGetFacultyUserEvent = EventJoin::find()
                    ->select(['event_id'])
                    ->where(['IN', 'user_id', $queryGetFacultyUser]);

                $clone = clone $queryGetFacultyUserEvent;

                foreach ($clone = EventJoin::find()
                    ->select(['event_id', 'user_id'])
                    ->where(['IN', 'user_id', $queryGetFacultyUser])->all() as $a => $b) {
                    $key = $b->event_id;
                    $store_data[$key] = $b->user_id;
                }

                $query1 = Event::find()
                    ->Where(['like', 'title', $model->search]);

                if ($count > 0) {


                    if ($preference->weekday == 0) {
                        $query1->andWhere(['<', 'WEEKDAY(start_date)', '6']);
                    }
                    if ($preference->aday == 0) {
                        $query1->andWhere(['=', 'datediff(start_date,end_date)', $preference->aday]);
                    }
                    if ($preference->paid == 0) {
                        $query1->andWhere(['like', 'fees', 'FREE']);
                    }
                    $query1
                        ->andWhere(['like', 'city', $preference->location])
                        ->andWhere(['=', 'speaker_id', $preference->speaker_id]);

                }

                $query1
                    ->andWhere(['>=', 'start_date', date('Y-m-d')])
                    ->andWhere(['IN', 'event.id', $queryGetFacultyUserEvent]);

                $cloneQuery = clone $query1;
                $queryCount1 = clone $query1;
                $pages1 = new Pagination(['totalCount' => $queryCount1->count()]);
                $pages1->setPageSize(5);
                $results1 = $query1->offset($pages1->offset)
                    ->limit($pages1->limit)
                    ->all();

                foreach ($cloneQuery->all() as $a => $b) {
                    array_push($event, $b->id);
                }
            }
            $query = Event::find()
                ->where(['like', 'tags', $model->search])
                ->orWhere(['like','title', $model->search])
                ->andWhere(['NOT IN', 'id', implode( ",", $event)])
                ->andWhere(['>=', 'start_date', date('Y-m-d')]);





            $queryCount = clone $query;
            $pages = new Pagination(['totalCount' => $queryCount->count()]);

            $pages->setPageSize(10);

            $results = $query->offset($pages->offset)
                ->limit($pages->limit)
                ->orderBy(['rating_mark' => SORT_DESC, 'num_view' => SORT_DESC])
                ->all();





            return $this->render('search_result', [
                'recommend' => $queryCount1,
                'results' => $results,
                'pages' => $pages,
                'model' => $model,
                'result' => $results1,
                'queryCount' => $queryCount,
                'storeEvent' => $store_data,
                'storeName' => $store_name,

            ]);
        }
        else
        {
            $errors = $model->errors;
        }

        return $this->render('index', [
            'model' => $model,
            'errors' => $errors,
            'events' => $events,
        ]);
    } // end function

    public function actionSpeaker() {

        $query = Speaker::find();

        $countQuery = clone $query;
        $pages = new Pagination(['totalCount' => $countQuery->count()]);

        $pages->setPageSize(12);

        $model = $query->offset($pages->offset)->limit($pages->limit)->all();

        return $this->render('speaker', [
            'model' => $model,
            'pages' => $pages,
        ]);
    }

    public function actionViewSpeaker($id) {

        $model = Speaker::findOne($id);
        $this->setUniqueId();

        $rating = [];

        $rating = SpeakerRating::find()->where(['speaker_id' => $model->id, 'unique_id' => $_COOKIE['user_unique_id']])->one();

        return $this->render('view-speaker', [
            'model' => $model,
            'rating' => $rating,
        ]);
    }

    public function actionSubCategory() {
        $out = [];
        if (isset($_POST['depdrop_parents'])) {
            $parents = $_POST['depdrop_parents'];
            if ($parents != null) {
                $cat_id = $parents[0];

                $sub_categories = SubCategory::find()->where([
                    'status' => 1,
                    'category_id' => $cat_id,
                ])->all();

                foreach ($sub_categories as $key => $value)
                {
                    $out[$key]['id'] = $value->id;
                    $out[$key]['name'] = $value->sub_category_name;
                }

                echo Json::encode(['output'=>$out, 'selected'=>'']);
                return;
            }
        }
        echo Json::encode(['output'=>'', 'selected'=>'']);
    }

    public function actionViewEvent($id) {

        $this->setUniqueId();

//        echo $_COOKIE['user_unique_id'];exit;

        # get event details
        $event = Event::find()->where([
            'id' => $id,
        ])->one();

        if (isset($_SESSION['event_view'])) {

            $array_key = array_keys($_SESSION['event_view']['event_id']);

            // if ip address sama, check event id ada tak dalam array key event_id
            if ($_SESSION['event_view']['nume'] == $_COOKIE['user_unique_id']) {

                // event id tak de dalam array
                if (!in_array($event->id, $array_key)) {
                    $current_view = $event->num_view;

                    $event->num_view = $current_view + 1;
                    $event->save();
                }
            }
            else {
                // current session tak sama dengan ip address
                $current_view = $event->num_view;

                $event->num_view = $current_view + 1;
                $event->save();
            }


            $_SESSION['event_view']['nume'] = $_COOKIE['user_unique_id'];
            $_SESSION['event_view']['event_id'][$event->id] = 'visited';

        }
        else {

            $_SESSION['event_view']['nume'] = (isset($_COOKIE['user_unique_id'])) ? $_COOKIE['user_unique_id']:'';
            $_SESSION['event_view']['event_id'][$event->id] = 'visited';

            // current session tak sama dengan ip address
            $current_view = $event->num_view;

            $event->num_view = $current_view + 1;
            $event->save();
        }

        $rating = [];


        $rating = EventRating::find()->where(['event_id' => $event->id, 'ip_address' => $_COOKIE['user_unique_id']])->one();


        $event_join = [];
        # check join this event for this login user
        if (!Yii::$app->user->isGuest) {

            $event_join = EventJoin::find()->where(
                [
                    'event_id' => $event->id,
                    'user_id' => Yii::$app->user->id,
                ]
            )->one();

        }

        return $this->render('view_event', [
            'event' => $event,
            'rating' => $rating,
            'event_join' => $event_join,
        ]);
    } // end function

    /**
     * Displays contact page.
     *
     * @return string
     */
    public function actionContact()
    {
        $model = new ContactForm();
        if ($model->load(Yii::$app->request->post()) && $model->contact(Yii::$app->params['adminEmail'])) {
            Yii::$app->session->setFlash('contactFormSubmitted');

            return $this->refresh();
        }
        return $this->render('contact', [
            'model' => $model,
        ]);
    }

    /**
     * Displays about page.
     *
     * @return string
     */
    public function actionAbout()
    {
        return $this->render('about');
    }

    /**
     * Stor rating
     */
    public function actionAjaxUpdate() {

        $this->setUniqueId();

        $rate = Yii::$app->request->post('rate');
        $event_id = Yii::$app->request->post('event_id');

        // event id tak de dalam array
        $model = EventRating::find()->where([
            'event_id' => $event_id,
            'ip_address' => $_COOKIE['user_unique_id'],
        ])->one();

        if (!$model) {
            $model = new EventRating();
            $model->ip_address = $_COOKIE['user_unique_id'];
        }

        $model->rate_id = $rate;
        $model->event_id = $event_id;

        $valid = $model->validate();

        if ($model->save()) {

            // get all rate by event id and calculate average
            $allRate = EventRating::find()->where(['event_id' => $event_id])->all();

            $totalAllRate = count($allRate);

            $total = 0;
            foreach ($allRate as $key => $value) {

                $total += $value->rate->id;

            } // end foreach

            $average = $total / $totalAllRate;

            // update event average mark
            $event = Event::find()->where(['id' => $event_id])->one();
            $event->rating_mark = (string)round($average,0);
            $event->num_rate = $totalAllRate;

            $valid = $event->validate();

//            print_r($event->getErrors());exit;

            if ($event->save()) {

                return 'Thank you for your rating.';
            } else {
                return 'Fail to rate. Please try again';
            }
        }
        else {
            return "Error while inseting data. Please try again";
        }
    }
    /**
     * Stor rating
     */
    public function actionAjaxRateSpeaker() {

        $this->setUniqueId();

        $rate = Yii::$app->request->post('rate');
        $speaker_id = Yii::$app->request->post('speaker_id');

        // event id tak de dalam array
        $model = SpeakerRating::find()->where([
            'speaker_id' => $speaker_id,
            'unique_id' => $_COOKIE['user_unique_id'],
        ])->one();

        if (!$model) {
            $model = new SpeakerRating();
            $model->unique_id = (string) $_COOKIE['user_unique_id'];
        }

        $model->rate_id = $rate;
        $model->speaker_id = $speaker_id;

        $valid = $model->validate();

        if (!$valid)
            print_r($model->errors);

        if ($model->save()) {

            // get all rate by event id and calculate average
            $allRate = SpeakerRating::find()->where(['speaker_id' => $speaker_id])->all();

            $totalAllRate = count($allRate);

            $total = 0;
            foreach ($allRate as $key => $value) {

                $total += $value->rate->id;

            } // end foreach

            $average = $total / $totalAllRate;

            // update event average mark
            $speaker = Speaker::find()->where(['id' => $speaker_id])->one();
            $speaker->rating_mark = (string)round($average,0);
            $speaker->num_rate = $totalAllRate;

            if ($speaker->save()) {

                return 'Thank you for your rating.';
            } else {
                return 'Fail to rate. Please try again';
            }
        }
        else {
            return "Error while inseting data. Please try again";
        }
    }

    public function actionAjaxJoinEvent() {

        if (Yii::$app->user->isGuest) {
            return '<span class="label label-danger">Please sign in to join this event</span>';
        }
        else {

            $event_id = Yii::$app->request->post('event_id');
            $user_id = Yii::$app->user->id;

            $model = new EventJoin();
            $model->event_id = $event_id;
            $model->user_id = $user_id;
            $model->join_at = date('Y-m-d H:i:s');

            if ($model->save()) {

                return '<span class="label label-success">You have successfully join this event</span>';
            }
        }
    }

    protected function setUniqueId() {

        if (!isset($_COOKIE['user_unique_id'])) {
            setcookie("user_unique_id", rand());
        }
    }
}
