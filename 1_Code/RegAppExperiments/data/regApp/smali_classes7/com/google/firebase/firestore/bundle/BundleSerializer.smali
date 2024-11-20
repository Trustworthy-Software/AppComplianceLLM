.class public Lcom/google/firebase/firestore/bundle/BundleSerializer;
.super Ljava/lang/Object;
.source "BundleSerializer.java"


# static fields
.field private static final MILLIS_PER_SECOND:J = 0x3e8L


# instance fields
.field private final remoteSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

.field private final timestampFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/RemoteSerializer;)V
    .locals 5
    .param p1, "remoteSerializer"    # Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/firebase/firestore/bundle/BundleSerializer;->remoteSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/google/firebase/firestore/bundle/BundleSerializer;->timestampFormat:Ljava/text/SimpleDateFormat;

    .line 64
    new-instance v1, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 67
    .local v1, "calendar":Ljava/util/GregorianCalendar;
    new-instance v2, Ljava/util/Date;

    const-wide/high16 v3, -0x8000000000000000L

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->setGregorianChange(Ljava/util/Date;)V

    .line 68
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setCalendar(Ljava/util/Calendar;)V

    .line 69
    return-void
.end method

.method private decodeArrayValue(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONArray;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/firestore/v1/Value$Builder;
    .param p2, "values"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 306
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v0

    .line 307
    .local v0, "arrayBuilder":Lcom/google/firestore/v1/ArrayValue$Builder;
    if-eqz p2, :cond_0

    .line 308
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 309
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeValue(Lorg/json/JSONObject;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    .line 313
    return-void
.end method

.method private decodeBundledQuery(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundledQuery;
    .locals 25
    .param p1, "bundledQuery"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "structuredQuery"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 132
    .local v2, "structuredQuery":Lorg/json/JSONObject;
    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->verifyNoSelect(Lorg/json/JSONObject;)V

    .line 134
    const-string v3, "parent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    .line 135
    .local v3, "parent":Lcom/google/firebase/firestore/model/ResourcePath;
    const-string v4, "from"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 136
    .local v4, "from":Lorg/json/JSONArray;
    invoke-direct {v0, v4}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->verifyCollectionSelector(Lorg/json/JSONArray;)V

    .line 137
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 138
    .local v6, "collectionSelector":Lorg/json/JSONObject;
    const-string v7, "allDescendants"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 139
    .local v5, "allDescendants":Z
    const/4 v7, 0x0

    .line 140
    .local v7, "collectionGroup":Ljava/lang/String;
    const-string v8, "collectionId"

    if-eqz v5, :cond_0

    .line 141
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Ljava/lang/String;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v8

    move-object v3, v8

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 146
    :goto_0
    const-string v8, "where"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeWhere(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v18

    .line 147
    .local v18, "filters":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    const-string v8, "orderBy"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeOrderBy(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v19

    .line 148
    .local v19, "orderBys":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    const-string v8, "startAt"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeStartAtBound(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v20

    .line 149
    .local v20, "startAt":Lcom/google/firebase/firestore/core/Bound;
    const-string v8, "endAt"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeEndAtBound(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Bound;

    move-result-object v21

    .line 151
    .local v21, "endAt":Lcom/google/firebase/firestore/core/Bound;
    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->verifyNoOffset(Lorg/json/JSONObject;)V

    .line 152
    invoke-direct {v0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeLimit(Lorg/json/JSONObject;)I

    move-result v15

    .line 153
    .local v15, "limit":I
    invoke-direct/range {p0 .. p1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeLimitType(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v13

    .line 155
    .local v13, "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    new-instance v14, Lcom/google/firebase/firestore/bundle/BundledQuery;

    new-instance v22, Lcom/google/firebase/firestore/core/Query;

    int-to-long v11, v15

    sget-object v16, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    move-object/from16 v8, v22

    move-object v9, v3

    move-object v10, v7

    move-wide/from16 v23, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object v0, v13

    move-object v1, v14

    .end local v13    # "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    .local v0, "limitType":Lcom/google/firebase/firestore/core/Query$LimitType;
    move-wide/from16 v13, v23

    move/from16 v23, v15

    .end local v15    # "limit":I
    .local v23, "limit":I
    move-object/from16 v15, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    invoke-direct/range {v8 .. v17}, Lcom/google/firebase/firestore/core/Query;-><init>(Lcom/google/firebase/firestore/model/ResourcePath;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JLcom/google/firebase/firestore/core/Query$LimitType;Lcom/google/firebase/firestore/core/Bound;Lcom/google/firebase/firestore/core/Bound;)V

    .line 168
    invoke-virtual/range {v22 .. v22}, Lcom/google/firebase/firestore/core/Query;->toTarget()Lcom/google/firebase/firestore/core/Target;

    move-result-object v8

    invoke-direct {v1, v8, v0}, Lcom/google/firebase/firestore/bundle/BundledQuery;-><init>(Lcom/google/firebase/firestore/core/Target;Lcom/google/firebase/firestore/core/Query$LimitType;)V

    .line 155
    return-object v1
.end method

.method private decodeCompositeFilter(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "compositeFilter"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 250
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    const-string v0, "op"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "filters"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 256
    .local v0, "filters":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 258
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFilter(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 251
    .end local v0    # "filters":Lorg/json/JSONArray;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The Android SDK only supports composite filters of type \'AND\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeEndAtBound(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Bound;
    .locals 4
    .param p1, "bound"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 192
    if-eqz p1, :cond_0

    .line 193
    const-string v0, "before"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 194
    .local v0, "before":Z
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodePosition(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 195
    .local v1, "position":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    xor-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v1, v3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2

    .line 197
    .end local v0    # "before":Z
    .end local v1    # "position":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeFieldFilter(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 3
    .param p2, "fieldFilter"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 264
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    const-string v0, "field"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFieldReference(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 265
    .local v0, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    const-string v1, "op"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFieldFilterOperator(Ljava/lang/String;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    .line 266
    .local v1, "filterOperator":Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    nop

    .line 268
    const-string v2, "value"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeValue(Lorg/json/JSONObject;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    .line 267
    invoke-static {v0, v1, v2}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    .line 266
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method private decodeFieldFilterOperator(Ljava/lang/String;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 1
    .param p1, "operator"    # Ljava/lang/String;

    .line 438
    invoke-static {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method private decodeFieldReference(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/model/FieldPath;
    .locals 1
    .param p1, "fieldReference"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 465
    const-string v0, "fieldPath"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/FieldPath;->fromServerFormat(Ljava/lang/String;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    return-object v0
.end method

.method private decodeFilter(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 2
    .param p2, "structuredQuery"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 239
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    const-string v0, "compositeFilter"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeCompositeFilter(Ljava/util/List;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 241
    :cond_0
    const-string v0, "fieldFilter"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFieldFilter(Ljava/util/List;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 243
    :cond_1
    const-string v0, "unaryFilter"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeUnaryFilter(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 246
    :cond_2
    :goto_0
    return-void
.end method

.method private decodeGeoPoint(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "builder"    # Lcom/google/firestore/v1/Value$Builder;
    .param p2, "geoPoint"    # Lorg/json/JSONObject;

    .line 328
    nop

    .line 329
    invoke-static {}, Lcom/google/type/LatLng;->newBuilder()Lcom/google/type/LatLng$Builder;

    move-result-object v0

    .line 330
    const-string v1, "latitude"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/type/LatLng$Builder;->setLatitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    .line 331
    const-string v1, "longitude"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/type/LatLng$Builder;->setLongitude(D)Lcom/google/type/LatLng$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {p1, v0}, Lcom/google/firestore/v1/Value$Builder;->setGeoPointValue(Lcom/google/type/LatLng$Builder;)Lcom/google/firestore/v1/Value$Builder;

    .line 332
    return-void
.end method

.method private decodeLimit(Lorg/json/JSONObject;)I
    .locals 3
    .param p1, "structuredQuery"    # Lorg/json/JSONObject;

    .line 173
    const-string v0, "limit"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 175
    .local v1, "limit":Lorg/json/JSONObject;
    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 176
    const-string v0, "value"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 178
    :cond_0
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private decodeLimitType(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Query$LimitType;
    .locals 4
    .param p1, "bundledQuery"    # Lorg/json/JSONObject;

    .line 469
    const-string v0, "limitType"

    const-string v1, "FIRST"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "limitType":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 471
    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_FIRST:Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v1

    .line 472
    :cond_0
    const-string v1, "LAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    return-object v1

    .line 475
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid limit type for bundle query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeMapValue(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/firestore/v1/Value$Builder;
    .param p2, "map"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 317
    invoke-static {}, Lcom/google/firestore/v1/MapValue;->newBuilder()Lcom/google/firestore/v1/MapValue$Builder;

    move-result-object v0

    .line 318
    .local v0, "mapBuilder":Lcom/google/firestore/v1/MapValue$Builder;
    if-eqz p2, :cond_0

    .line 319
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 321
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeValue(Lorg/json/JSONObject;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/firestore/v1/MapValue$Builder;->putFields(Ljava/lang/String;Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/MapValue$Builder;

    .line 322
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 324
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/firestore/v1/Value$Builder;->setMapValue(Lcom/google/firestore/v1/MapValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    .line 325
    return-void
.end method

.method private decodeName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    .line 119
    .local v0, "resourcePath":Lcom/google/firebase/firestore/model/ResourcePath;
    iget-object v1, p0, Lcom/google/firebase/firestore/bundle/BundleSerializer;->remoteSerializer:Lcom/google/firebase/firestore/remote/RemoteSerializer;

    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/remote/RemoteSerializer;->isLocalResourceName(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/model/ResourcePath;->popFirst(I)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/model/ResourcePath;

    return-object v1

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource name is not valid for current instance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeOrderBy(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 7
    .param p1, "orderBys"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/OrderBy;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/OrderBy;>;"
    if-eqz p1, :cond_1

    .line 215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 216
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 217
    .local v2, "orderBy":Lorg/json/JSONObject;
    const-string v3, "field"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFieldReference(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v3

    .line 218
    .local v3, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    const-string v4, "direction"

    const-string v5, "ASCENDING"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 220
    .local v4, "directionString":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    sget-object v5, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    goto :goto_1

    .line 222
    :cond_0
    sget-object v5, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    :goto_1
    nop

    .line 223
    .local v5, "direction":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    invoke-static {v5, v3}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .end local v2    # "orderBy":Lorg/json/JSONObject;
    .end local v3    # "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    .end local v4    # "directionString":Ljava/lang/String;
    .end local v5    # "direction":Lcom/google/firebase/firestore/core/OrderBy$Direction;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private decodePosition(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .param p1, "bound"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/Value;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v0, "cursor":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    const-string v1, "values"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 203
    .local v1, "values":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 204
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 205
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeValue(Lorg/json/JSONObject;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private decodeSnapshotVersion(Ljava/lang/Object;)Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 127
    new-instance v0, Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/model/SnapshotVersion;-><init>(Lcom/google/firebase/Timestamp;)V

    return-object v0
.end method

.method private decodeStartAtBound(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/core/Bound;
    .locals 3
    .param p1, "bound"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 183
    if-eqz p1, :cond_0

    .line 184
    const-string v0, "before"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 185
    .local v0, "before":Z
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodePosition(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 186
    .local v1, "position":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    new-instance v2, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {v2, v1, v0}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object v2

    .line 188
    .end local v0    # "before":Z
    .end local v1    # "position":Ljava/util/List;, "Ljava/util/List<Lcom/google/firestore/v1/Value;>;"
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;
    .locals 2
    .param p1, "timestamp"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 394
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 395
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimestamp(Ljava/lang/String;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    return-object v0

    .line 397
    :cond_0
    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 401
    move-object v0, p1

    check-cast v0, Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimestamp(Lorg/json/JSONObject;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    return-object v0

    .line 398
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timestamps must be either ISO 8601-formatted strings or JSON objects"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decodeTimestamp(Ljava/lang/String;)Lcom/google/firebase/Timestamp;
    .locals 17
    .param p1, "timestamp"    # Ljava/lang/String;

    .line 343
    move-object/from16 v1, p1

    const/16 v0, 0x54

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 344
    .local v0, "dayOffset":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    .line 347
    const/16 v3, 0x5a

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 348
    .local v4, "timezoneOffsetPosition":I
    const/16 v5, 0x2b

    if-ne v4, v2, :cond_0

    .line 349
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v4, v6

    .line 351
    :cond_0
    if-ne v4, v2, :cond_1

    .line 352
    const/16 v6, 0x2d

    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v4, v6

    .line 354
    :cond_1
    if-eq v4, v2, :cond_7

    .line 359
    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 360
    .local v7, "timeValue":Ljava/lang/String;
    move-object v8, v7

    .line 361
    .local v8, "secondValue":Ljava/lang/String;
    const-string v9, ""

    .line 362
    .local v9, "nanoValue":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 363
    .local v10, "pointPosition":I
    if-eq v10, v2, :cond_2

    .line 364
    invoke-virtual {v7, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 365
    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v9, v2

    .line 367
    :cond_2
    move-object/from16 v2, p0

    :try_start_1
    iget-object v11, v2, Lcom/google/firebase/firestore/bundle/BundleSerializer;->timestampFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v11, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 368
    .local v11, "date":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/Date;->getTime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 369
    .local v12, "seconds":J
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {v9}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->parseNanos(Ljava/lang/String;)I

    move-result v6

    .line 371
    .local v6, "nanos":I
    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v3, :cond_5

    .line 372
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v5, v4, 0x1

    if-ne v3, v5, :cond_4

    move/from16 v16, v0

    goto :goto_1

    .line 373
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Invalid timestamp: Invalid trailing data \""

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 375
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, "\""

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timestamp":Ljava/lang/String;
    throw v3

    .line 379
    .restart local p1    # "timestamp":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "offsetValue":Ljava/lang/String;
    invoke-static {v3}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimezoneOffset(Ljava/lang/String;)J

    move-result-wide v14

    .line 381
    .local v14, "offset":J
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v16, v0

    const/16 v0, 0x2b

    .end local v0    # "dayOffset":I
    .local v16, "dayOffset":I
    if-ne v5, v0, :cond_6

    .line 382
    sub-long/2addr v12, v14

    goto :goto_1

    .line 384
    :cond_6
    add-long/2addr v12, v14

    .line 387
    .end local v3    # "offsetValue":Ljava/lang/String;
    .end local v14    # "offset":J
    :goto_1
    new-instance v0, Lcom/google/firebase/Timestamp;

    invoke-direct {v0, v12, v13, v6}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v0

    .line 355
    .end local v6    # "nanos":I
    .end local v7    # "timeValue":Ljava/lang/String;
    .end local v8    # "secondValue":Ljava/lang/String;
    .end local v9    # "nanoValue":Ljava/lang/String;
    .end local v10    # "pointPosition":I
    .end local v11    # "date":Ljava/util/Date;
    .end local v12    # "seconds":J
    .end local v16    # "dayOffset":I
    .restart local v0    # "dayOffset":I
    :cond_7
    move-object/from16 v2, p0

    move/from16 v16, v0

    .end local v0    # "dayOffset":I
    .restart local v16    # "dayOffset":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid timestamp: Missing valid timezone offset: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timestamp":Ljava/lang/String;
    throw v0

    .line 345
    .end local v4    # "timezoneOffsetPosition":I
    .end local v16    # "dayOffset":I
    .restart local v0    # "dayOffset":I
    .restart local p1    # "timestamp":Ljava/lang/String;
    :cond_8
    move-object/from16 v2, p0

    move/from16 v16, v0

    .end local v0    # "dayOffset":I
    .restart local v16    # "dayOffset":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timestamp":Ljava/lang/String;
    throw v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 388
    .end local v16    # "dayOffset":I
    .restart local p1    # "timestamp":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v2, p0

    .line 389
    .local v0, "e":Ljava/text/ParseException;
    :goto_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to parse timestamp"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private decodeTimestamp(Lorg/json/JSONObject;)Lcom/google/firebase/Timestamp;
    .locals 4
    .param p1, "timestamp"    # Lorg/json/JSONObject;

    .line 335
    new-instance v0, Lcom/google/firebase/Timestamp;

    const-string v1, "seconds"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "nanos"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/firebase/Timestamp;-><init>(JI)V

    return-object v0
.end method

.method private decodeTimestamp(Lcom/google/firestore/v1/Value$Builder;Ljava/lang/Object;)V
    .locals 4
    .param p1, "builder"    # Lcom/google/firestore/v1/Value$Builder;
    .param p2, "timestamp"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 406
    invoke-direct {p0, p2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimestamp(Ljava/lang/Object;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    .line 407
    .local v0, "decoded":Lcom/google/firebase/Timestamp;
    nop

    .line 408
    invoke-static {}, Lcom/google/protobuf/Timestamp;->newBuilder()Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    .line 409
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getSeconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    .line 410
    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->getNanoseconds()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/protobuf/Timestamp$Builder;->setNanos(I)Lcom/google/protobuf/Timestamp$Builder;

    move-result-object v1

    .line 407
    invoke-virtual {p1, v1}, Lcom/google/firestore/v1/Value$Builder;->setTimestampValue(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/Value$Builder;

    .line 411
    return-void
.end method

.method private static decodeTimezoneOffset(Ljava/lang/String;)J
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .line 428
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 429
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 432
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "hours":Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "minutes":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3c

    mul-long/2addr v3, v5

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long/2addr v3, v7

    mul-long/2addr v3, v5

    return-wide v3

    .line 430
    .end local v1    # "hours":Ljava/lang/String;
    .end local v2    # "minutes":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid offset value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeUnaryFilter(Ljava/util/List;Lorg/json/JSONObject;)V
    .locals 5
    .param p2, "unaryFilter"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 442
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    const-string v0, "field"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFieldReference(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 443
    .local v0, "fieldPath":Lcom/google/firebase/firestore/model/FieldPath;
    const-string v1, "op"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "operator":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "IS_NOT_NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "IS_NOT_NAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "IS_NULL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "IS_NAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 460
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected unary filter: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :pswitch_0
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v3, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    .line 457
    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    .line 456
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    goto :goto_2

    .line 453
    :pswitch_1
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v3, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    goto :goto_2

    .line 450
    :pswitch_2
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v3, Lcom/google/firebase/firestore/model/Values;->NULL_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    goto :goto_2

    .line 447
    :pswitch_3
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    sget-object v3, Lcom/google/firebase/firestore/model/Values;->NAN_VALUE:Lcom/google/firestore/v1/Value;

    invoke-static {v0, v2, v3}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    nop

    .line 462
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7eb03f9a -> :sswitch_3
        -0x57576884 -> :sswitch_2
        -0xe8e20a6 -> :sswitch_1
        0x3cca5708 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private decodeValue(Lorg/json/JSONObject;)Lcom/google/firestore/v1/Value;
    .locals 4
    .param p1, "value"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 272
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v0

    .line 274
    .local v0, "builder":Lcom/google/firestore/v1/Value$Builder;
    const-string v1, "nullValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    sget-object v1, Lcom/google/protobuf/NullValue;->NULL_VALUE:Lcom/google/protobuf/NullValue;

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setNullValue(Lcom/google/protobuf/NullValue;)Lcom/google/firestore/v1/Value$Builder;

    goto/16 :goto_0

    .line 276
    :cond_0
    const-string v1, "booleanValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 277
    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBooleanValue(Z)Lcom/google/firestore/v1/Value$Builder;

    goto/16 :goto_0

    .line 278
    :cond_1
    const-string v1, "integerValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setIntegerValue(J)Lcom/google/firestore/v1/Value$Builder;

    goto/16 :goto_0

    .line 280
    :cond_2
    const-string v1, "doubleValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 281
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firestore/v1/Value$Builder;->setDoubleValue(D)Lcom/google/firestore/v1/Value$Builder;

    goto/16 :goto_0

    .line 282
    :cond_3
    const-string v1, "timestampValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeTimestamp(Lcom/google/firestore/v1/Value$Builder;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 284
    :cond_4
    const-string v1, "stringValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    goto :goto_0

    .line 286
    :cond_5
    const-string v1, "bytesValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 287
    nop

    .line 288
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setBytesValue(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Value$Builder;

    goto :goto_0

    .line 289
    :cond_6
    const-string v1, "referenceValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 290
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firestore/v1/Value$Builder;->setReferenceValue(Ljava/lang/String;)Lcom/google/firestore/v1/Value$Builder;

    goto :goto_0

    .line 291
    :cond_7
    const-string v1, "geoPointValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeGeoPoint(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 293
    :cond_8
    const-string v1, "arrayValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 294
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "values"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeArrayValue(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 295
    :cond_9
    const-string v1, "mapValue"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 296
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "fields"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeMapValue(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONObject;)V

    .line 301
    :goto_0
    invoke-virtual {v0}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Value;

    return-object v1

    .line 298
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected value type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeWhere(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 1
    .param p1, "where"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/core/Filter;>;"
    if-eqz p1, :cond_0

    .line 233
    invoke-direct {p0, v0, p1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeFilter(Ljava/util/List;Lorg/json/JSONObject;)V

    .line 235
    :cond_0
    return-object v0
.end method

.method private static parseNanos(Ljava/lang/String;)I
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .line 414
    const/4 v0, 0x0

    .line 415
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 416
    mul-int/lit8 v0, v0, 0xa

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 418
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 421
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    goto :goto_1

    .line 419
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid nanoseconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 424
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method private verifyCollectionSelector(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "from"    # Lorg/json/JSONArray;

    .line 480
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 484
    return-void

    .line 481
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only queries with a single \'from\' clause are supported by the Android SDK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyNoOffset(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "structuredQuery"    # Lorg/json/JSONObject;

    .line 487
    const-string v0, "offset"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    return-void

    .line 488
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Queries with offsets are not supported by the Android SDK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private verifyNoSelect(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "structuredQuery"    # Lorg/json/JSONObject;

    .line 494
    const-string v0, "select"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    return-void

    .line 495
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Queries with \'select\' statements are not supported by the Android SDK"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public decodeBundleMetadata(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundleMetadata;
    .locals 14
    .param p1, "bundleMetadata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 79
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "bundleId":Ljava/lang/String;
    const-string v1, "version"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 81
    .local v8, "version":I
    const-string v1, "createTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeSnapshotVersion(Ljava/lang/Object;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v9

    .line 82
    .local v9, "createTime":Lcom/google/firebase/firestore/model/SnapshotVersion;
    const-string v1, "totalDocuments"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 83
    .local v10, "totalDocuments":I
    const-string v1, "totalBytes"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 84
    .local v11, "totalBytes":J
    new-instance v13, Lcom/google/firebase/firestore/bundle/BundleMetadata;

    move-object v1, v13

    move-object v2, v0

    move v3, v8

    move-object v4, v9

    move v5, v10

    move-wide v6, v11

    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/firestore/bundle/BundleMetadata;-><init>(Ljava/lang/String;ILcom/google/firebase/firestore/model/SnapshotVersion;IJ)V

    return-object v13
.end method

.method public decodeBundledDocumentMetadata(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;
    .locals 7
    .param p1, "bundledDocumentMetadata"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 89
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v0

    .line 90
    .local v0, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    const-string v1, "readTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeSnapshotVersion(Ljava/lang/Object;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v1

    .line 91
    .local v1, "readTime":Lcom/google/firebase/firestore/model/SnapshotVersion;
    const-string v2, "exists"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 92
    .local v2, "exists":Z
    const-string v3, "queries"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 93
    .local v3, "queriesJson":Lorg/json/JSONArray;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v4, "queries":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 97
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 98
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 101
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;

    invoke-direct {v5, v0, v1, v2, v4}, Lcom/google/firebase/firestore/bundle/BundledDocumentMetadata;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;ZLjava/util/List;)V

    return-object v5
.end method

.method decodeDocument(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundleDocument;
    .locals 6
    .param p1, "document"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 105
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeName(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v1

    .line 107
    .local v1, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    const-string v2, "updateTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeSnapshotVersion(Ljava/lang/Object;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    .line 109
    .local v2, "updateTime":Lcom/google/firebase/firestore/model/SnapshotVersion;
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object v3

    .line 110
    .local v3, "value":Lcom/google/firestore/v1/Value$Builder;
    const-string v4, "fields"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeMapValue(Lcom/google/firestore/v1/Value$Builder;Lorg/json/JSONObject;)V

    .line 112
    new-instance v4, Lcom/google/firebase/firestore/bundle/BundleDocument;

    .line 114
    invoke-virtual {v3}, Lcom/google/firestore/v1/Value$Builder;->getMapValue()Lcom/google/firestore/v1/MapValue;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/firestore/v1/MapValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lcom/google/firebase/firestore/model/ObjectValue;->fromMap(Ljava/util/Map;)Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v5

    .line 113
    invoke-static {v1, v2, v5}, Lcom/google/firebase/firestore/model/MutableDocument;->newFoundDocument(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/model/ObjectValue;)Lcom/google/firebase/firestore/model/MutableDocument;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/firebase/firestore/bundle/BundleDocument;-><init>(Lcom/google/firebase/firestore/model/MutableDocument;)V

    .line 112
    return-object v4
.end method

.method public decodeNamedQuery(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/NamedQuery;
    .locals 4
    .param p1, "namedQuery"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 72
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "name":Ljava/lang/String;
    const-string v1, "bundledQuery"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeBundledQuery(Lorg/json/JSONObject;)Lcom/google/firebase/firestore/bundle/BundledQuery;

    move-result-object v1

    .line 74
    .local v1, "bundledQuery":Lcom/google/firebase/firestore/bundle/BundledQuery;
    const-string v2, "readTime"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/bundle/BundleSerializer;->decodeSnapshotVersion(Ljava/lang/Object;)Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v2

    .line 75
    .local v2, "readTime":Lcom/google/firebase/firestore/model/SnapshotVersion;
    new-instance v3, Lcom/google/firebase/firestore/bundle/NamedQuery;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/firebase/firestore/bundle/NamedQuery;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/bundle/BundledQuery;Lcom/google/firebase/firestore/model/SnapshotVersion;)V

    return-object v3
.end method
