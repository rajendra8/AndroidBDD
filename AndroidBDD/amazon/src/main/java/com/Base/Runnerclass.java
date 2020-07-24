package com.Base;

import org.junit.runner.JUnitCore;

public class Runnerclass {
    public static void main(String[]arg) throws Exception{
        JUnitCore junitRunner = new JUnitCore();
        junitRunner.run(Base.class);

    }
}
