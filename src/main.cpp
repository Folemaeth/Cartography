#include <iostream>
#include "crow.h"

int main () {
    crow::SimpleApp app;
    CROW_ROUTE(app, "/main")([](){
        auto page = crow::mustache::load("base.html");
        crow::mustache::context ctx;
        ctx["title"] = "Cartography"; ctx["content"] = "Hello, world!";
        return page.render(ctx);
    });
    app.port(8080).multithreaded().run();
}
