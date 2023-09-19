class MovieResponse {
  Fees? fees;
  Null? status;
  ExternalId? externalId;
  Rating? rating;
  Votes? votes;
  Backdrop? backdrop;
  int? movieLength;
  Images? images;
  List<ProductionCompanies>? productionCompanies;
  List<SpokenLanguages>? spokenLanguages;
  int? id;
  String? type;
  String? name;
  String? description;
  Distributors? distributors;
  Premiere? premiere;
  String? slogan;
  int? year;
  World? budget;
  Backdrop? poster;
  List<Facts>? facts;
  List<Genres>? genres;
  Videos? videos;
  List<Null>? seasonsInfo;
  List<Persons>? persons;
  List<Null>? lists;
  int? typeNumber;
  String? alternativeName;
  String? enName;
  List<Names>? names;
  List<SimilarMovies>? similarMovies;
  String? updatedAt;
  ImagesInfo? imagesInfo;
  List<Null>? sequelsAndPrequels;
  String? ratingMpaa;
  String? shortDescription;
  Technology? technology;
  bool? ticketsOnSale;
  int? ageRating;
  Logo? logo;
  Watchability? watchability;
  Null? top10;
  int? top250;
  List<Audience>? audience;
  Null? deletedAt;
  bool? isSeries;
  Null? seriesLength;
  Null? totalSeriesLength;

  MovieResponse(
      {this.fees,
        this.status,
        this.externalId,
        this.rating,
        this.votes,
        this.backdrop,
        this.movieLength,
        this.images,
        this.productionCompanies,
        this.spokenLanguages,
        this.id,
        this.type,
        this.name,
        this.description,
        this.distributors,
        this.premiere,
        this.slogan,
        this.year,
        this.budget,
        this.poster,
        this.facts,
        this.genres,
        this.videos,
        this.seasonsInfo,
        this.persons,
        this.lists,
        this.typeNumber,
        this.alternativeName,
        this.enName,
        this.names,
        this.similarMovies,
        this.updatedAt,
        this.imagesInfo,
        this.sequelsAndPrequels,
        this.ratingMpaa,
        this.shortDescription,
        this.technology,
        this.ticketsOnSale,
        this.ageRating,
        this.logo,
        this.watchability,
        this.top10,
        this.top250,
        this.audience,
        this.deletedAt,
        this.isSeries,
        this.seriesLength,
        this.totalSeriesLength});

  MovieResponse.fromJson(Map<String, dynamic> json) {
    fees = json['fees'] != null ? Fees.fromJson(json['fees']) : null;
    status = json['status'];
    externalId = json['externalId'] != null
        ? ExternalId.fromJson(json['externalId'])
        : null;
    rating =
    json['rating'] != null ? Rating.fromJson(json['rating']) : null;
    votes = json['votes'] != null ? Votes.fromJson(json['votes']) : null;
    backdrop = json['backdrop'] != null
        ? Backdrop.fromJson(json['backdrop'])
        : null;
    movieLength = json['movieLength'];
    images =
    json['images'] != null ? Images.fromJson(json['images']) : null;
    if (json['productionCompanies'] != null) {
      productionCompanies = <ProductionCompanies>[];
      json['productionCompanies'].forEach((v) {
        productionCompanies!.add(ProductionCompanies.fromJson(v));
      });
    }
    if (json['spokenLanguages'] != null) {
      spokenLanguages = <SpokenLanguages>[];
      json['spokenLanguages'].forEach((v) {
        spokenLanguages!.add(SpokenLanguages.fromJson(v));
      });
    }
    id = json['id'];
    type = json['type'];
    name = json['name'];
    description = json['description'];
    distributors = json['distributors'] != null
        ? Distributors.fromJson(json['distributors'])
        : null;
    premiere = json['premiere'] != null
        ? Premiere.fromJson(json['premiere'])
        : null;
    slogan = json['slogan'];
    year = json['year'];
    budget = json['budget'] != null ? World.fromJson(json['budget']) : null;
    poster =
    json['poster'] != null ? Backdrop.fromJson(json['poster']) : null;
    if (json['facts'] != null) {
      facts = <Facts>[];
      json['facts'].forEach((v) {
        facts!.add(Facts.fromJson(v));
      });
    }
    if (json['genres'] != null) {
      genres = <Genres>[];
      json['genres'].forEach((v) {
        genres!.add(Genres.fromJson(v));
      });
    }

    videos =
    json['videos'] != null ? Videos.fromJson(json['videos']) : null;
    if (json['seasonsInfo'] != null) {
      seasonsInfo = <Null>[];

    }
    if (json['persons'] != null) {
      persons = <Persons>[];
      json['persons'].forEach((v) {
        persons!.add(Persons.fromJson(v));
      });
    }
    if (json['lists'] != null) {
      lists = <Null>[];
    }
    typeNumber = json['typeNumber'];
    alternativeName = json['alternativeName'];
    enName = json['enName'];
    if (json['names'] != null) {
      names = <Names>[];
      json['names'].forEach((v) {
        names!.add(Names.fromJson(v));
      });
    }
    if (json['similarMovies'] != null) {
      similarMovies = <SimilarMovies>[];
      json['similarMovies'].forEach((v) {
        similarMovies!.add(SimilarMovies.fromJson(v));
      });
    }
    updatedAt = json['updatedAt'];
    imagesInfo = json['imagesInfo'] != null
        ? ImagesInfo.fromJson(json['imagesInfo'])
        : null;
    if (json['sequelsAndPrequels'] != null) {
      sequelsAndPrequels = <Null>[];
    }
    ratingMpaa = json['ratingMpaa'];
    shortDescription = json['shortDescription'];
    technology = json['technology'] != null
        ? Technology.fromJson(json['technology'])
        : null;
    ticketsOnSale = json['ticketsOnSale'];
    ageRating = json['ageRating'];
    logo = json['logo'] != null ? Logo.fromJson(json['logo']) : null;
    watchability = json['watchability'] != null
        ? Watchability.fromJson(json['watchability'])
        : null;
    top10 = json['top10'];
    top250 = json['top250'];
    if (json['audience'] != null) {
      audience = <Audience>[];
      json['audience'].forEach((v) {
        audience!.add(Audience.fromJson(v));
      });
    }
    deletedAt = json['deletedAt'];
    isSeries = json['isSeries'];
    seriesLength = json['seriesLength'];
    totalSeriesLength = json['totalSeriesLength'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (fees != null) {
      data['fees'] = fees!.toJson();
    }
    data['status'] = status;
    if (externalId != null) {
      data['externalId'] = externalId!.toJson();
    }
    if (rating != null) {
      data['rating'] = rating!.toJson();
    }
    if (votes != null) {
      data['votes'] = votes!.toJson();
    }
    if (backdrop != null) {
      data['backdrop'] = backdrop!.toJson();
    }
    data['movieLength'] = movieLength;
    if (images != null) {
      data['images'] = images!.toJson();
    }
    if (productionCompanies != null) {
      data['productionCompanies'] =
          productionCompanies!.map((v) => v.toJson()).toList();
    }
    if (spokenLanguages != null) {
      data['spokenLanguages'] =
          spokenLanguages!.map((v) => v.toJson()).toList();
    }
    data['id'] = id;
    data['type'] = type;
    data['name'] = name;
    data['description'] = description;
    if (distributors != null) {
      data['distributors'] = distributors!.toJson();
    }
    if (premiere != null) {
      data['premiere'] = premiere!.toJson();
    }
    data['slogan'] = slogan;
    data['year'] = year;
    if (budget != null) {
      data['budget'] = budget!.toJson();
    }
    if (poster != null) {
      data['poster'] = poster!.toJson();
    }
    if (facts != null) {
      data['facts'] = facts!.map((v) => v.toJson()).toList();
    }
    if (genres != null) {
      data['genres'] = genres!.map((v) => v.toJson()).toList();
    }
    if (videos != null) {
      data['videos'] = videos!.toJson();
    }
    if (persons != null) {
      data['persons'] = persons!.map((v) => v.toJson()).toList();
    }
    data['typeNumber'] = typeNumber;
    data['alternativeName'] = alternativeName;
    data['enName'] = enName;
    if (names != null) {
      data['names'] = names!.map((v) => v.toJson()).toList();
    }
    if (similarMovies != null) {
      data['similarMovies'] =
          similarMovies!.map((v) => v.toJson()).toList();
    }
    data['updatedAt'] = updatedAt;
    if (imagesInfo != null) {
      data['imagesInfo'] = imagesInfo!.toJson();
    }
    data['ratingMpaa'] = ratingMpaa;
    data['shortDescription'] = shortDescription;
    if (technology != null) {
      data['technology'] = technology!.toJson();
    }
    data['ticketsOnSale'] = ticketsOnSale;
    data['ageRating'] = ageRating;
    if (logo != null) {
      data['logo'] = logo!.toJson();
    }
    if (watchability != null) {
      data['watchability'] = watchability!.toJson();
    }
    data['top10'] = top10;
    data['top250'] = top250;
    if (audience != null) {
      data['audience'] = audience!.map((v) => v.toJson()).toList();
    }
    data['deletedAt'] = deletedAt;
    data['isSeries'] = isSeries;
    data['seriesLength'] = seriesLength;
    data['totalSeriesLength'] = totalSeriesLength;
    return data;
  }
}

class Fees {
  World? world;
  World? russia;
  World? usa;

  Fees({this.world, this.russia, this.usa});

  Fees.fromJson(Map<String, dynamic> json) {
    world = json['world'] != null ? World.fromJson(json['world']) : null;
    russia = json['russia'] != null ? World.fromJson(json['russia']) : null;
    usa = json['usa'] != null ? World.fromJson(json['usa']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (world != null) {
      data['world'] = world!.toJson();
    }
    if (russia != null) {
      data['russia'] = russia!.toJson();
    }
    if (usa != null) {
      data['usa'] = usa!.toJson();
    }
    return data;
  }
}

class World {
  int? value;
  String? currency;

  World({this.value, this.currency});

  World.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['currency'] = currency;
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

class Backdrop {
  String? url;
  String? previewUrl;

  Backdrop({this.url, this.previewUrl});

  Backdrop.fromJson(Map<String, dynamic> json) {
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

class Images {
  int? postersCount;
  int? backdropsCount;
  int? framesCount;

  Images({this.postersCount, this.backdropsCount, this.framesCount});

  Images.fromJson(Map<String, dynamic> json) {
    postersCount = json['postersCount'];
    backdropsCount = json['backdropsCount'];
    framesCount = json['framesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['postersCount'] = postersCount;
    data['backdropsCount'] = backdropsCount;
    data['framesCount'] = framesCount;
    return data;
  }
}

class ProductionCompanies {
  String? name;
  String? url;
  String? previewUrl;

  ProductionCompanies({this.name, this.url, this.previewUrl});

  ProductionCompanies.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    previewUrl = json['previewUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['url'] = url;
    data['previewUrl'] = previewUrl;
    return data;
  }
}

class SpokenLanguages {
  String? name;
  String? nameEn;

  SpokenLanguages({this.name, this.nameEn});

  SpokenLanguages.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    nameEn = json['nameEn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['nameEn'] = nameEn;
    return data;
  }
}

class Distributors {
  String? distributor;
  String? distributorRelease;

  Distributors({this.distributor, this.distributorRelease});

  Distributors.fromJson(Map<String, dynamic> json) {
    distributor = json['distributor'];
    distributorRelease = json['distributorRelease'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['distributor'] = distributor;
    data['distributorRelease'] = distributorRelease;
    return data;
  }
}

class Premiere {
  String? world;
  String? russia;

  Premiere({this.world, this.russia});

  Premiere.fromJson(Map<String, dynamic> json) {
    world = json['world'];
    russia = json['russia'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['world'] = world;
    data['russia'] = russia;
    return data;
  }
}

class Facts {
  String? value;
  String? type;
  bool? spoiler;

  Facts({this.value, this.type, this.spoiler});

  Facts.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    type = json['type'];
    spoiler = json['spoiler'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['value'] = value;
    data['type'] = type;
    data['spoiler'] = spoiler;
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

class Videos {
  List<Trailers>? trailers;
  List<Null>? teasers;

  Videos({this.trailers, this.teasers});

  Videos.fromJson(Map<String, dynamic> json) {
    if (json['trailers'] != null) {
      trailers = <Trailers>[];
      json['trailers'].forEach((v) {
        trailers!.add(Trailers.fromJson(v));
      });
    }
    if (json['teasers'] != null) {
      teasers = <Null>[];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (trailers != null) {
      data['trailers'] = trailers!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Trailers {
  String? url;
  String? name;
  String? site;
  String? type;

  Trailers({this.url, this.name, this.site, this.type});

  Trailers.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    name = json['name'];
    site = json['site'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['name'] = name;
    data['site'] = site;
    data['type'] = type;
    return data;
  }
}

class Persons {
  int? id;
  String? photo;
  String? name;
  String? enName;
  String? description;
  String? profession;
  String? enProfession;

  Persons(
      {this.id,
        this.photo,
        this.name,
        this.enName,
        this.description,
        this.profession,
        this.enProfession});

  Persons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    photo = json['photo'];
    name = json['name'];
    enName = json['enName'];
    description = json['description'];
    profession = json['profession'];
    enProfession = json['enProfession'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['photo'] = photo;
    data['name'] = name;
    data['enName'] = enName;
    data['description'] = description;
    data['profession'] = profession;
    data['enProfession'] = enProfession;
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

class SimilarMovies {
  int? id;
  String? name;
  Null? enName;
  String? alternativeName;
  String? type;
  Backdrop? poster;

  SimilarMovies(
      {this.id,
        this.name,
        this.enName,
        this.alternativeName,
        this.type,
        this.poster});

  SimilarMovies.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    enName = json['enName'];
    alternativeName = json['alternativeName'];
    type = json['type'];
    poster =
    json['poster'] != null ? Backdrop.fromJson(json['poster']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['enName'] = enName;
    data['alternativeName'] = alternativeName;
    data['type'] = type;
    if (poster != null) {
      data['poster'] = poster!.toJson();
    }
    return data;
  }
}

class ImagesInfo {
  int? framesCount;

  ImagesInfo({this.framesCount});

  ImagesInfo.fromJson(Map<String, dynamic> json) {
    framesCount = json['framesCount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['framesCount'] = framesCount;
    return data;
  }
}

class Technology {
  bool? hasImax;
  bool? has3D;

  Technology({this.hasImax, this.has3D});

  Technology.fromJson(Map<String, dynamic> json) {
    hasImax = json['hasImax'];
    has3D = json['has3D'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['hasImax'] = hasImax;
    data['has3D'] = has3D;
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

class Audience {
  int? count;
  String? country;

  Audience({this.count, this.country});

  Audience.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['count'] = count;
    data['country'] = country;
    return data;
  }
}