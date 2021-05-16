import 'package:flutter/material.dart';
import 'package:flutter_task/model/news.dart';
import 'package:flutter_task/service/news_service.dart';

import 'news_detail.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<News> newsList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: FutureBuilder(
          future: getNewsList('trending'),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              if(newsList.length==0){
                return Center(child: Text('No News Found'),);
              }else{
                return ListView.builder(
                  itemCount: newsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return NewsDetail(news: newsList[index],);
                        },));
                      },
                      child: ListTile(
                        leading: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FadeInImage(
                            height: 100,
                            width: 100,
                            fit: BoxFit.fill,
                            placeholder: AssetImage(
                                "assets/profile.png"
                            ),
                            image: NetworkImage(
                                newsList[index].urlToImage
                            ),
                          ),
                        ),
                        title: Text(newsList[index].title),
                        subtitle: Text(
                          newsList[index].description,
                          maxLines: 2,
                        ),
                      ),
                    );
                  },);
              }
            }else if(snapshot.hasError){
              return Center(child: Text('${snapshot.error}'),);
            }else{
              return Center(child: CircularProgressIndicator(),);
            }
          },
        ),
      ),
    );
  }

  getNewsList(String s) async {
    newsList  = await NewsService().getNewsList(s);
    return newsList;
  }
}