<?php

namespace Example;

use \Example\User;

class AppTest extends \PHPUnit\Framework\TestCase
{

    public function testApp()
    {
        $this->assertEquals(App::findUser(), null);

        $m = \StaticMock::mock("\\Example\\UserDao");
        $m->shouldReceive("find")->once()->andReturn(new User(1, "Takahashi"));

        $user = App::findUser();

        $this->assertEquals($user->getId(), 1);
        $this->assertEquals($user->getName(), "Takahashi");

        $m->assert();
    }

}
