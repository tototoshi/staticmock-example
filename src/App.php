<?php

namespace Example;

class App
{

    public static function findUser()
    {
        return UserDao::find();
    }

}
