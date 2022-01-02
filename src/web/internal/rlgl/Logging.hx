package web.internal.rlgl;

import js.Browser;

enum LogLevel
{
    Error;
    Warning;
    Info;
    Debug;
}

function TraceLog(level:LogLevel, message:String)
{
    final levelStr = switch (level)
    {
        case Error:
            "[ERROR]";
        case Warning:
            "[WARNING]";
        case Info:
            "[INFO]";
        case Debug:
            "[DEBUG]";
    }

    Browser.console.log('$levelStr RLGL: $message');
}
