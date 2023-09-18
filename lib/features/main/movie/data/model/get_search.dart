class GetSearchMoviesResponse {
  List<Docs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  GetSearchMoviesResponse(
      {this.docs, this.total, this.limit, this.page, this.pages});

  GetSearchMoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(new Docs.fromJson(v));
      });
    }
    total = json['total'];
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (docs != null) {
      data['docs'] = docs!.map((v) => v.toJson()).toList();
    }
    data['total'] = total;
    data['limit'] = limit;
    data['page'] = page;
    data['pages'] = pages;
    return data;
  }
}

class Docs {
  int? id;
  String? name;
  String? alternativeName;
  String? enName;
  List<String>? names;
  String? type;
  int? year;
  String? description;
  String? shortDescription;
  String? logo;
  String? poster;
  String? backdrop;
  int? rating;
  int? votes;
  int? movieLength;
  List<String>? genres;
  List<String>? countries;
  List<int>? releaseYears;

  Docs(
      {this.id,
        this.name,
        this.alternativeName,
        this.enName,
        this.names,
        this.type,
        this.year,
        this.description,
        this.shortDescription,
        this.logo,
        this.poster,
        this.backdrop,
        this.rating,
        this.votes,
        this.movieLength,
        this.genres,
        this.countries,
        this.releaseYears});

  Docs.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    names = json['names'].cast<String>();
    type = json['type'];
    year = json['year'];
    description = json['description'];
    shortDescription = json['shortDescription'];
    logo = json['logo'];
    poster = json['poster'];
    backdrop = json['backdrop'];
    rating = json['rating'];
    votes = json['votes'];
    movieLength = json['movieLength'];
    genres = json['genres'].cast<String>();
    countries = json['countries'].cast<String>();
    releaseYears = json['releaseYears'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['alternativeName'] = alternativeName;
    data['enName'] = enName;
    data['names'] = names;
    data['type'] = type;
    data['year'] = year;
    data['description'] = description;
    data['shortDescription'] = shortDescription;
    data['logo'] = logo;
    data['poster'] = poster;
    data['backdrop'] = backdrop;
    data['rating'] = rating;
    data['votes'] = votes;
    data['movieLength'] = movieLength;
    data['genres'] = genres;
    data['countries'] = countries;
    data['releaseYears'] = releaseYears;
    return data;
  }
}
