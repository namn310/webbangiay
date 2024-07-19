<?php
trait ContactModel
{
    public function createContact()
    {
        $conn = Connection::getInstance();
        $name = $_POST['name'];
        $phone = $_POST['phone'];
        $email = $_POST['email'];
        $des = $_POST['des'];
        $date = date('d-m-y');
        try {
            $query = $conn->prepare("insert into contact set name=:name,phone=:phone,email=:email,description=:des,create_at=:date");
            $query->execute(['name' => $name, 'phone' => $phone, 'email' => $email, 'des' => $des, 'date' => $date]);
        } catch (Throwable) {
            return 0;
        }
        return 1;
    }
}
