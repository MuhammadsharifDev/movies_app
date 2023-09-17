class GetMoviesResponse {
  List<Docs>? docs;
  int? total;
  int? limit;
  int? page;
  int? pages;

  GetMoviesResponse({this.docs, this.total, this.limit, this.page, this.pages});

  GetMoviesResponse.fromJson(Map<String, dynamic> json) {
    if (json['docs'] != null) {
      docs = <Docs>[];
      json['docs'].forEach((v) {
        docs!.add(Docs.fromJson(v));
      });
    }
    total = json['total'];
    limit = json['limit'];
    page = json['page'];
    pages = json['pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
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
  ExternalId? externalId;
  Rating? rating;
  Votes? votes;
  int? movieLength;
  int? id;
  String? type;
  String? name;
  String? description;
  int? year;
  Poster? poster;
  List<Genres>? genres;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  String? shortDescription;
  Logo? logo;
  Watchability? watchability;

  Docs(
      {this.externalId,
        this.rating,
        this.votes,
        this.movieLength,
        this.id,
        this.type,
        this.name,
        this.description,
        this.year,
        this.poster,
        this.genres,
        this.alternativeName,
        this.enName,
        this.names,
        this.shortDescription,
        this.logo,
        this.watchability});

  Docs.fromJson(Map<String, dynamic> json) {
    externalId = json['externalId'] != null
        ? ExternalId.fromJson(json['externalId'])
        : null;
    rating =
    json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    votes = json['votes'] != null ? Votes.fromJson(json['votes']) : null;
    movieLength = json['movieLength'];
    id = json['id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    year = json['year'];
    poster =
    json['poster'] != null ? Poster.fromJson(json['poster']) : null;
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(Genres.fromJson(v));
      });
    }
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    shortDescription = json['shortDescription'];
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    watchability = json['watchability'] != null
        ? Watchability.fromJson(json['watchability'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (externalId != null) {
      data['externalId'] = externalId!.toJson();
    }
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    if (votes != null) {
      data['votes'] = votes!.toJson();
    }
    data['movieLength'] = movieLength;
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['description'] = description;
    data['year'] = year;
    if (poster != null) {
      data['poster'] = poster!.toJson();
    }
    if (genres != null) {
      data['genres'] = genres!.map((v) => v.toJson()).toList();
    }
    data['alternativeName'] = alternativeName;
    data['enName'] = enName;
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    data['shortDescription'] = shortDescription;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    if (watchability != null) {
      data['watchability'] = watchability!.toJson();
    }
    return data;
  }
}

class ExternalId {
  String? kpHD;
  String? imdb;
  int? tmdb;

  ExternalId({this.kpHD, this.imdb, this.tmdb});

  ExternalId.fromJson(Map<String, dynamic> json) {
    kpHD = json['kpHD'];
    imdb = json['imdb'];
    tmdb = json['tmdb'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kpHD'] = kpHD;
    data['imdb'] = imdb;
    data['tmdb'] = tmdb;
    return data;
  }
}

class Rating {
  double? kp;
  double? imdb;
  double? filmCritics;
  num? russianFilmCritics;
  Null? await;

  Rating(
      {this.kp,
        this.imdb,
        this.filmCritics,
        this.russianFilmCritics,
        this.await});

  Rating.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kp'] = kp;
    data['imdb'] = imdb;
    data['filmCritics'] = filmCritics;
    data['russianFilmCritics'] = russianFilmCritics;
    data['await'] = await;
    return data;
  }
}

class Votes {
  int? kp;
  int? imdb;
  int? filmCritics;
  int? russianFilmCritics;
  int? await;

  Votes(
      {this.kp,
        this.imdb,
        this.filmCritics,
        this.russianFilmCritics,
        this.await});

  Votes.fromJson(Map<String, dynamic> json) {
    kp = json['kp'];
    imdb = json['imdb'];
    filmCritics = json['filmCritics'];
    russianFilmCritics = json['russianFilmCritics'];
    await = json['await'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['kp'] = kp;
    data['imdb'] = imdb;
    data['filmCritics'] = filmCritics;
    data['russianFilmCritics'] = russianFilmCritics;
    data['await'] = await;
    return data;
  }
}

class Poster {
  String? url;
  String? previewUrl;

  Poster({this.url, this.previewUrl});

  Poster.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['previewUrl'] = previewUrl;
    return data;
  }
}

class Genres {
  String? name;

  Genres({this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    return data;
  }
}

class Names {
  String? name;
  String? language;
  String? type;

  Names({this.name, this.language, this.type});

  Names.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    language = json['language'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['language'] = language;
    data['type'] = type;
    return data;
  }
}

class Logo {
  String? url;

  Logo({this.url});

  Logo.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    return data;
  }
}

class Watchability {
  List<Items>? items;

  Watchability({this.items});

  Watchability.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      items = <Items>[];
      json['items'].forEach((v) {
        items!.add(Items.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (items != null) {
      data['items'] = items!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Items {
  String? name;
  Logo? logo;
  String? url;

  Items({this.name, this.logo, this.url});

  Items.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    data['url'] = url;
    return data;
  }
}
