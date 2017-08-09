<aside class="main-sidebar">

    <section class="sidebar">

        <?= dmstr\widgets\Menu::widget(
            [
                'options' => ['class' => 'sidebar-menu'],
                'items' => [
                    ['label' => 'My Menu', 'options' => ['class' => 'header']],
                    ['label' => 'Search Event', 'icon' => 'search', 'url' => ['/']],
                    ['label' => 'My Profile', 'icon' => 'user', 'url' => ['/user/profile']],
                    ['label' => 'Preferences', 'icon' => 'star', 'url' => ['/preferences']],
                    ['label' => 'Dashboard', 'icon' => 'dashboard', 'url' => ['/dashboard']],
                    ['label' => 'MY Joined event', 'icon' => 'bars', 'url' => ['/my-event']],

                    [
                        'label' => 'Speaker Management',
                        'icon' => 'users',
                        'url' => ['/speaker'],
                        'visible' => Yii::$app->user->can('manage_speaker'),
                    ],
                    [
                        'label' => 'Event Management',
                        'icon' => 'database',
                        'url' => ['/event'],
                        'visible' => Yii::$app->user->can('create_event'),
                    ],
                ],
            ]
        ) ?>

    </section>

</aside>
