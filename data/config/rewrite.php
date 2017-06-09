<?php
return array(
    /* URL规则 */
    'REWRITE_RULE' =>array(
        'list-<class_id>.html' => 'article/Category/index',
        'page-<class_id>.html' => 'page/Category/index',
        'article/<content_id>.html' => 'article/Content/index',
        'form-<name>/<id>.html' => 'lhave/Form/info',
        'form-<name>.html' => 'lhave/Form/index',
        'tags-list/<name>.html' => 'lhave/Tags/index',
        'tags/<name>.html' => 'lhave/TagsContent/index',
    ),
);