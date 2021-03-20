<?php

namespace Example;

class User
{

    public function __construct($id, $name) {
        $this->id = $id;
        $this->name = $name;
    }

    public function getId()
    {
        return $this->id;
    }

    public function getName()
    {
        return $this->name;
    }

    public function toString() {
        return "User[id={$this->id}, name={$this->name}]";
    }

}
