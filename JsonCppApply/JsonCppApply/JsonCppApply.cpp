// JsonCppApply.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>
#include <fstream>
#include <windows.h>
#include "json/json.h"

#define JSON_FILE_PATH "../JsonFile/JsonTest.json"

int main()
{
    std::cout << "Hello World!\n";
    SetConsoleOutputCP(CP_UTF8); //控制台编码为utf-8

    std::string strFileContent;

    std::fstream fileStream(JSON_FILE_PATH);
    if (!fileStream.is_open())
    {
        std::cerr << "unable to open file" << JSON_FILE_PATH << std::endl;
    }

    std::stringstream buffer;
    buffer << fileStream.rdbuf();
    strFileContent = buffer.str();
    fileStream.close();

    Json::Value root;
    Json::Reader reader;
    bool parsingSuccessful = reader.parse(strFileContent, root);
    if (!parsingSuccessful)
    {
        std::cerr << "File to parse JSON" << reader.getFormattedErrorMessages() << std::endl;
        return -1;
    }

    if (!root.isObject() || !root.isMember("result") || !root.isMember("code"))
    {
        std::cerr << "root is not have result or code" << std::endl;
        return -1;
    }

    Json::Value resultObj = root["result"];
    if (!resultObj.isObject() || !resultObj.isMember("songs") || !resultObj.isMember("songCount"))
    {
        std::cerr << "resultObj is not have songs or songCount" << std::endl;
        return -1;
    }

    Json::Value songsArr = resultObj["songs"];
    if (!songsArr.isArray())
    {
        std::cerr << "songsArr is not Array" << std::endl;
        return -1;
    }

    for (const Json::Value& song : songsArr)
    {
        std::cout << "Song Name: " << song["name"].asString() << std::endl;
        std::cout << "Song ID: " << song["id"].asInt64() << std::endl;
        Json::Value artistsArr = song["artists"];
        for (const auto& artist : artistsArr)
        {
            std::cout << "Artist Name: " << artist["name"].asString() << std::endl;
            std::cout << "Artist ID: " << artist["id"].asInt64() << std::endl;
        }
    }
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
