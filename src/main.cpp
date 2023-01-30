#include <iostream>
#include "crow.h"

int main () {
    crow::SimpleApp app;
    CROW_ROUTE(app, "/")([](){
        auto page = crow::mustache::load_text("startpage.html");
        return page;
    });
    app.port(8080).multithreaded().run();
}
