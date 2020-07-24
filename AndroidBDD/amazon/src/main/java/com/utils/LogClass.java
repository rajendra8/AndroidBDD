package com.utils;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class LogClass {

    private static Logger log =LoggerFactory.getLogger(LogClass.class);

    public static synchronized void info(String info){
        log.info(info);
    }

    public static synchronized void error(String error){
        log.error(error);

    }

    public static synchronized void debug(String debug){
        log.debug(debug);
    }
    public static synchronized void warn(String message) {
        log.warn(message);
    }

    public static synchronized void trace(String message) {
        log.trace(message);
    }
    public static synchronized void beginTestCase(String strTestCaseName) {
        log.info("***************************************************************************************************************************");
        log.info("---------------------------------------Beginning of "+strTestCaseName+"----------------------------------------------------");
        log.info("***************************************************************************************************************************");
    }

    public static synchronized void endTestCase(String strTestCaseName) {
        log.info("***************************************************************************************************************************");
        log.info("---------------------------------------Ending of "+strTestCaseName+"----------------------------------------------------");
        log.info("***************************************************************************************************************************");
    }

}
