.class Lorg/mapsforge/map/layer/hills/HgtCache$1;
.super Lorg/mapsforge/map/layer/hills/LazyFuture;
.source "HgtCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapsforge/map/layer/hills/HgtCache;-><init>(Ljava/io/File;ZLorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/layer/hills/ShadingAlgorithm;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/mapsforge/map/layer/hills/LazyFuture<",
        "Ljava/util/Map<",
        "Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;",
        "Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/layer/hills/HgtCache;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/hills/HgtCache;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/HgtCache;

    .line 152
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/HgtCache$1;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-direct {p0}, Lorg/mapsforge/map/layer/hills/LazyFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic calculate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Lorg/mapsforge/map/layer/hills/HgtCache$1;->calculate()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected calculate()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;",
            "Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;>;"
    const-string v1, "([ns])(\\d{1,2})([ew])(\\d{1,3})\\.hgt"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 157
    .local v1, "matcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lorg/mapsforge/map/layer/hills/HgtCache$1;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    iget-object v2, v2, Lorg/mapsforge/map/layer/hills/HgtCache;->demFolder:Ljava/io/File;

    iget-object v3, p0, Lorg/mapsforge/map/layer/hills/HgtCache$1;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    invoke-static {v3}, Lorg/mapsforge/map/layer/hills/HgtCache;->access$000(Lorg/mapsforge/map/layer/hills/HgtCache;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v1, v0, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$1;->crawl(Ljava/io/File;Ljava/util/regex/Matcher;Ljava/util/Map;Ljava/util/List;)V

    .line 158
    return-object v0
.end method

.method crawl(Ljava/io/File;Ljava/util/regex/Matcher;Ljava/util/Map;Ljava/util/List;)V
    .locals 38
    .param p1, "file"    # Ljava/io/File;
    .param p2, "matcher"    # Ljava/util/regex/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/regex/Matcher;",
            "Ljava/util/Map<",
            "Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;",
            "Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p3, "map":Ljava/util/Map;, "Ljava/util/Map<Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;>;"
    .local p4, "problems":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 163
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 164
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 165
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 166
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 167
    .local v5, "northsouth":I
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 169
    .local v6, "eastwest":I
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "n"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    neg-int v7, v5

    .line 170
    .local v7, "north":I
    :goto_0
    const/4 v8, 0x3

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "e"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_1

    :cond_1
    neg-int v8, v6

    .line 172
    .local v8, "east":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v9

    .line 173
    .local v9, "length":J
    const-wide/16 v11, 0x2

    div-long v11, v9, v11

    .line 174
    .local v11, "heights":J
    long-to-double v13, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-long v13, v13

    .line 175
    .local v13, "sqrt":J
    mul-long v15, v13, v13

    cmp-long v15, v15, v11

    if-eqz v15, :cond_3

    .line 176
    if-eqz v3, :cond_2

    .line 177
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v4

    move-object/from16 v4, p1

    .end local v4    # "name":Ljava/lang/String;
    .local v27, "name":Ljava/lang/String;
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v4, " length in shorts ("

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ") is not a square number"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 176
    .end local v27    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_2
    move-object/from16 v27, v4

    .end local v4    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    goto/16 :goto_4

    .line 179
    .end local v27    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_3
    move-object/from16 v27, v4

    .end local v4    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    new-instance v4, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;

    invoke-direct {v4, v7, v8}, Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;-><init>(II)V

    .line 180
    .local v4, "tileKey":Lorg/mapsforge/map/layer/hills/HgtCache$TileKey;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    .line 181
    .local v15, "existing":Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    if-eqz v15, :cond_4

    move/from16 v28, v5

    move/from16 v29, v6

    .end local v5    # "northsouth":I
    .end local v6    # "eastwest":I
    .local v28, "northsouth":I
    .local v29, "eastwest":I
    iget-wide v5, v15, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;->size:J

    cmp-long v5, v5, v9

    if-gez v5, :cond_7

    goto :goto_2

    .end local v28    # "northsouth":I
    .end local v29    # "eastwest":I
    .restart local v5    # "northsouth":I
    .restart local v6    # "eastwest":I
    :cond_4
    move/from16 v28, v5

    move/from16 v29, v6

    .line 183
    .end local v5    # "northsouth":I
    .end local v6    # "eastwest":I
    .restart local v28    # "northsouth":I
    .restart local v29    # "eastwest":I
    :goto_2
    new-instance v5, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;

    iget-object v6, v0, Lorg/mapsforge/map/layer/hills/HgtCache$1;->this$0:Lorg/mapsforge/map/layer/hills/HgtCache;

    move-wide/from16 v30, v9

    .end local v9    # "length":J
    .local v30, "length":J
    add-int/lit8 v9, v7, -0x1

    int-to-double v9, v9

    move-wide/from16 v32, v11

    .end local v11    # "heights":J
    .local v32, "heights":J
    int-to-double v11, v8

    move-wide/from16 v34, v13

    .end local v13    # "sqrt":J
    .local v34, "sqrt":J
    int-to-double v13, v7

    move/from16 v36, v7

    .end local v7    # "north":I
    .local v36, "north":I
    add-int/lit8 v7, v8, 0x1

    move/from16 v37, v8

    .end local v8    # "east":I
    .local v37, "east":I
    int-to-double v7, v7

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v18, p1

    move-wide/from16 v19, v9

    move-wide/from16 v21, v11

    move-wide/from16 v23, v13

    move-wide/from16 v25, v7

    invoke-direct/range {v16 .. v26}, Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;-><init>(Lorg/mapsforge/map/layer/hills/HgtCache;Ljava/io/File;DDDD)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 165
    .end local v15    # "existing":Lorg/mapsforge/map/layer/hills/HgtCache$HgtFileInfo;
    .end local v27    # "name":Ljava/lang/String;
    .end local v28    # "northsouth":I
    .end local v29    # "eastwest":I
    .end local v30    # "length":J
    .end local v32    # "heights":J
    .end local v34    # "sqrt":J
    .end local v36    # "north":I
    .end local v37    # "east":I
    .local v4, "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v27, v4

    .end local v4    # "name":Ljava/lang/String;
    .restart local v27    # "name":Ljava/lang/String;
    goto :goto_4

    .line 187
    .end local v27    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 188
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 189
    .local v4, "files":[Ljava/io/File;
    if-eqz v4, :cond_8

    .line 190
    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    aget-object v7, v4, v6

    .line 191
    .local v7, "sub":Ljava/io/File;
    invoke-virtual {v0, v7, v1, v2, v3}, Lorg/mapsforge/map/layer/hills/HgtCache$1;->crawl(Ljava/io/File;Ljava/util/regex/Matcher;Ljava/util/Map;Ljava/util/List;)V

    .line 190
    .end local v7    # "sub":Ljava/io/File;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 187
    .end local v4    # "files":[Ljava/io/File;
    :cond_7
    :goto_4
    nop

    .line 196
    :cond_8
    return-void
.end method
