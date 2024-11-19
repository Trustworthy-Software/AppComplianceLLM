.class public Lorg/osmdroid/util/GEMFFile;
.super Ljava/lang/Object;
.source "GEMFFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/util/GEMFFile$GEMFInputStream;,
        Lorg/osmdroid/util/GEMFFile$GEMFRange;
    }
.end annotation


# static fields
.field private static final FILE_COPY_BUFFER_SIZE:I = 0x400

.field private static final FILE_SIZE_LIMIT:J = 0x40000000L

.field private static final TILE_SIZE:I = 0x100

.field private static final U32_SIZE:I = 0x4

.field private static final U64_SIZE:I = 0x8

.field private static final VERSION:I = 0x4


# instance fields
.field private mCurrentSource:I

.field private final mFileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/RandomAccessFile;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocation:Ljava/lang/String;

.field private final mRangeData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/util/GEMFFile$GEMFRange;",
            ">;"
        }
    .end annotation
.end field

.field private mSourceLimited:Z

.field private final mSources:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "pLocation"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/osmdroid/util/GEMFFile;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 67
    iput v0, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 93
    iput-object p1, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 95
    invoke-direct {p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 31
    .param p1, "pLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    .local p2, "pSourceFolders":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, v1, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    .line 66
    const/4 v3, 0x0

    iput-boolean v3, v1, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 67
    iput v3, v1, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 130
    iput-object v2, v1, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    .line 133
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v4, v0

    .line 136
    .local v4, "dirIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/io/File;

    .line 138
    .local v6, "sourceDir":Ljava/io/File;
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v7, v0

    .line 141
    .local v7, "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v8

    array-length v9, v8

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v8, v10

    .line 144
    .local v11, "zDir":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 147
    nop

    .line 149
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v12, v0

    .line 152
    .local v12, "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v13

    array-length v14, v13

    move v15, v3

    :goto_2
    if-ge v15, v14, :cond_1

    aget-object v16, v13, v15

    .line 156
    .local v16, "xDir":Ljava/io/File;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 159
    nop

    .line 161
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    move-object/from16 v17, v0

    .line 162
    .local v17, "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    move-object/from16 v19, v5

    array-length v5, v3

    move-object/from16 v20, v8

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v5, :cond_0

    move/from16 v21, v5

    aget-object v5, v3, v8

    .line 165
    .local v5, "yFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 166
    move-object/from16 v22, v3

    :try_start_3
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    move/from16 v23, v9

    const/16 v9, 0x2e

    :try_start_4
    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 165
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    nop

    .line 171
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 172
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v9, 0x2e

    invoke-virtual {v3, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 171
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v3, v17

    .end local v17    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .local v3, "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    invoke-virtual {v3, v0, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 167
    .end local v3    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v17    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v22, v3

    :goto_4
    move/from16 v23, v9

    :goto_5
    move-object/from16 v3, v17

    .line 168
    .end local v17    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    nop

    .line 162
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "yFile":Ljava/io/File;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v17, v3

    move/from16 v5, v21

    move-object/from16 v3, v22

    move/from16 v9, v23

    goto :goto_3

    .line 175
    .end local v3    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v17    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :cond_0
    move/from16 v23, v9

    move-object/from16 v3, v17

    .end local v17    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    .restart local v3    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    new-instance v0, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 157
    .end local v3    # "yList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;"
    :catch_3
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v23, v9

    .line 158
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    nop

    .line 152
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v16    # "xDir":Ljava/io/File;
    :goto_7
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move/from16 v9, v23

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 178
    :cond_1
    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v23, v9

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 145
    .end local v12    # "xList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;"
    :catch_4
    move-exception v0

    move-object/from16 v19, v5

    move-object/from16 v20, v8

    move/from16 v23, v9

    .line 146
    .restart local v0    # "e":Ljava/lang/NumberFormatException;
    nop

    .line 141
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v11    # "zDir":Ljava/io/File;
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v5, v19

    move-object/from16 v8, v20

    move/from16 v9, v23

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 181
    :cond_2
    move-object/from16 v19, v5

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v6    # "sourceDir":Ljava/io/File;
    .end local v7    # "zList":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/io/File;>;>;>;"
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 185
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 186
    .local v0, "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 187
    .local v3, "indexSource":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 188
    .local v5, "si":I
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 189
    .local v7, "source":Ljava/lang/String;
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    nop

    .end local v7    # "source":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 192
    goto :goto_9

    .line 195
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v6, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_15

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 198
    .local v8, "source":Ljava/lang/String;
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_b
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_14

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 201
    .local v10, "zoom":Ljava/lang/Integer;
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    .line 204
    .local v11, "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    new-instance v12, Ljava/util/TreeSet;

    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/LinkedHashMap;

    invoke-virtual {v13, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/LinkedHashMap;

    invoke-virtual {v13}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v12}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 206
    .local v13, "x":Ljava/lang/Integer;
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v14, "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/LinkedHashMap;

    invoke-virtual {v15, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/LinkedHashMap;

    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move/from16 v17, v5

    .end local v5    # "si":I
    .local v17, "si":I
    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/Integer;

    .line 208
    .local v5, "y":Ljava/lang/Integer;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    .end local v5    # "y":Ljava/lang/Integer;
    move/from16 v5, v17

    goto :goto_d

    .line 211
    .end local v17    # "si":I
    .local v5, "si":I
    :cond_5
    move/from16 v17, v5

    .end local v5    # "si":I
    .restart local v17    # "si":I
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_6

    .line 212
    move/from16 v5, v17

    goto :goto_c

    .line 215
    :cond_6
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 217
    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 218
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11, v14, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    :cond_7
    invoke-virtual {v11, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    .end local v13    # "x":Ljava/lang/Integer;
    .end local v14    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move/from16 v5, v17

    goto :goto_c

    .line 225
    .end local v17    # "si":I
    .restart local v5    # "si":I
    :cond_8
    move/from16 v17, v5

    .end local v5    # "si":I
    .restart local v17    # "si":I
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 228
    .local v5, "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/List;

    .line 230
    .local v13, "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/TreeSet;

    invoke-virtual {v11, v13}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Collection;

    invoke-direct {v14, v15}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 232
    .local v14, "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v15, "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {v14}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move/from16 v30, v16

    move-object/from16 v16, v7

    move/from16 v7, v30

    .local v7, "i":I
    :goto_f
    invoke-virtual {v14}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v20, v9

    add-int/lit8 v9, v19, 0x1

    if-ge v7, v9, :cond_b

    .line 234
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v14, v9}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 235
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 237
    :cond_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_a

    .line 238
    invoke-virtual {v5, v13, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v9

    .line 233
    :cond_a
    :goto_10
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, v20

    goto :goto_f

    .line 244
    .end local v7    # "i":I
    :cond_b
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_c

    .line 245
    invoke-virtual {v5, v13, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .end local v13    # "ySet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v14    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v15    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_c
    move-object/from16 v7, v16

    move-object/from16 v9, v20

    goto :goto_e

    .line 250
    :cond_d
    move-object/from16 v16, v7

    move-object/from16 v20, v9

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 252
    .local v9, "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v12, Ljava/util/TreeSet;

    invoke-direct {v12, v9}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 253
    .local v12, "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v13, Ljava/util/TreeSet;

    invoke-virtual {v11, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    invoke-direct {v13, v14}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 255
    .local v13, "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    new-instance v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/4 v15, 0x0

    invoke-direct {v14, v1, v15}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 256
    .local v14, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iput-object v10, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 257
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v15, v19

    check-cast v15, Ljava/lang/Integer;

    iput-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 258
    invoke-virtual {v13}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    iput-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 259
    invoke-virtual {v13}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    iput-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 261
    invoke-virtual {v12}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .local v15, "i":I
    :goto_12
    invoke-virtual {v12}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v22, v5

    .end local v5    # "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v22, "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    add-int/lit8 v5, v19, 0x1

    if-ge v15, v5, :cond_11

    .line 262
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12, v5}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 263
    iget-object v5, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    if-nez v5, :cond_e

    .line 264
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 266
    :cond_e
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    goto :goto_13

    .line 269
    :cond_f
    iget-object v5, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    if-eqz v5, :cond_10

    .line 270
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v5, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    move-object/from16 v19, v7

    const/4 v7, 0x0

    invoke-direct {v5, v1, v7}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 273
    .end local v14    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .local v5, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iput-object v10, v5, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 274
    invoke-virtual {v0, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    iput-object v14, v5, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 275
    invoke-virtual {v13}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    iput-object v14, v5, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 276
    invoke-virtual {v13}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    iput-object v14, v5, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    move-object v14, v5

    goto :goto_13

    .line 269
    .end local v5    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v14    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_10
    move-object/from16 v19, v7

    const/4 v7, 0x0

    .line 261
    :goto_13
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v19

    move-object/from16 v5, v22

    goto :goto_12

    :cond_11
    move-object/from16 v19, v7

    .line 281
    .end local v15    # "i":I
    iget-object v5, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    if-eqz v5, :cond_12

    .line 282
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .end local v9    # "xSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "yList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v13    # "xList":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v14    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_12
    move-object/from16 v7, v19

    move-object/from16 v5, v22

    goto/16 :goto_11

    .line 250
    .end local v22    # "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .local v5, "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_13
    move-object/from16 v22, v5

    .line 285
    .end local v5    # "xSets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v10    # "zoom":Ljava/lang/Integer;
    .end local v11    # "ySets":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/util/List<Ljava/lang/Integer;>;Ljava/util/List<Ljava/lang/Integer;>;>;"
    move-object/from16 v7, v16

    move/from16 v5, v17

    move-object/from16 v9, v20

    goto/16 :goto_b

    .line 198
    .end local v17    # "si":I
    .local v5, "si":I
    :cond_14
    move/from16 v17, v5

    move-object/from16 v16, v7

    .line 286
    .end local v5    # "si":I
    .end local v8    # "source":Ljava/lang/String;
    .restart local v17    # "si":I
    goto/16 :goto_a

    .line 290
    .end local v17    # "si":I
    .restart local v5    # "si":I
    :cond_15
    move/from16 v17, v5

    .end local v5    # "si":I
    .restart local v17    # "si":I
    const/4 v5, 0x0

    .line 291
    .local v5, "source_list_size":I
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_14
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 292
    .restart local v8    # "source":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x8

    add-int/2addr v5, v9

    .line 293
    .end local v8    # "source":Ljava/lang/String;
    goto :goto_14

    .line 295
    :cond_16
    add-int/lit8 v7, v5, 0xc

    .line 300
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x20

    add-int/2addr v7, v8

    const/4 v8, 0x4

    add-int/2addr v7, v8

    int-to-long v9, v7

    .line 304
    .local v9, "offset":J
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 305
    .local v11, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 307
    iget-object v12, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .local v12, "x":I
    :goto_16
    iget-object v13, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    if-ge v12, v13, :cond_18

    .line 308
    iget-object v13, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .local v13, "y":I
    :goto_17
    iget-object v14, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-ge v13, v14, :cond_17

    .line 309
    const-wide/16 v14, 0xc

    add-long/2addr v9, v14

    .line 308
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 307
    .end local v13    # "y":I
    :cond_17
    add-int/lit8 v12, v12, 0x1

    goto :goto_16

    .line 312
    .end local v11    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v12    # "x":I
    :cond_18
    goto :goto_15

    .line 314
    :cond_19
    move-wide v11, v9

    .line 316
    .local v11, "headerSize":J
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v13, "rw"

    invoke-direct {v7, v2, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    .local v7, "gemfFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 322
    const/16 v8, 0x100

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 325
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 328
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 329
    .local v14, "source":Ljava/lang/String;
    invoke-virtual {v0, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 330
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 331
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->write([B)V

    .line 332
    .end local v14    # "source":Ljava/lang/String;
    goto :goto_18

    .line 335
    :cond_1a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 338
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 339
    .local v14, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 340
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 341
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 342
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 343
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 344
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v7, v15}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 345
    iget-object v15, v14, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    move-object/from16 v16, v0

    .end local v0    # "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local v16, "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 346
    .end local v14    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move-object/from16 v1, p0

    move-object/from16 v0, v16

    goto :goto_19

    .line 349
    .end local v16    # "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v0    # "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1b
    move-object/from16 v16, v0

    .end local v0    # "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "sourceIndex":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 350
    .local v1, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v8, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "x":I
    :goto_1b
    iget-object v14, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    if-ge v8, v14, :cond_1d

    .line 351
    iget-object v14, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .local v14, "y":I
    :goto_1c
    iget-object v15, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    if-ge v14, v15, :cond_1c

    .line 352
    invoke-virtual {v7, v9, v10}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 353
    iget-object v15, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 354
    invoke-virtual {v3, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 353
    invoke-virtual {v4, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/LinkedHashMap;

    move-object/from16 v19, v0

    iget-object v0, v1, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 355
    invoke-virtual {v15, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    move-object v15, v1

    .end local v1    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .local v15, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 356
    .local v0, "fileSize":J
    move/from16 v20, v5

    .end local v5    # "source_list_size":I
    .local v20, "source_list_size":I
    long-to-int v5, v0

    invoke-virtual {v7, v5}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 357
    add-long/2addr v9, v0

    .line 351
    .end local v0    # "fileSize":J
    add-int/lit8 v14, v14, 0x1

    move-object v1, v15

    move-object/from16 v0, v19

    move/from16 v5, v20

    goto :goto_1c

    .end local v15    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v20    # "source_list_size":I
    .restart local v1    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v5    # "source_list_size":I
    :cond_1c
    move-object/from16 v19, v0

    move-object v15, v1

    move/from16 v20, v5

    .line 350
    .end local v1    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v5    # "source_list_size":I
    .end local v14    # "y":I
    .restart local v15    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v20    # "source_list_size":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .end local v15    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v20    # "source_list_size":I
    .restart local v1    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v5    # "source_list_size":I
    :cond_1d
    move-object/from16 v19, v0

    move-object v15, v1

    move/from16 v20, v5

    .line 360
    .end local v1    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v5    # "source_list_size":I
    .end local v8    # "x":I
    .restart local v20    # "source_list_size":I
    goto :goto_1a

    .line 366
    .end local v20    # "source_list_size":I
    .restart local v5    # "source_list_size":I
    :cond_1e
    move/from16 v20, v5

    .end local v5    # "source_list_size":I
    .restart local v20    # "source_list_size":I
    const/16 v0, 0x400

    new-array v1, v0, [B

    .line 368
    .local v1, "buf":[B
    move-wide v14, v11

    .line 369
    .local v14, "currentOffset":J
    const/4 v5, 0x0

    .line 371
    .local v5, "fileIndex":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_23

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    check-cast v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 372
    .local v0, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    move/from16 v19, v5

    .end local v5    # "fileIndex":I
    .local v19, "fileIndex":I
    iget-object v5, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "x":I
    :goto_1e
    move-object/from16 v22, v6

    .end local v6    # "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    .local v22, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    iget-object v6, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    if-ge v5, v6, :cond_22

    .line 373
    iget-object v6, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .local v6, "y":I
    :goto_1f
    move-object/from16 v23, v8

    iget-object v8, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    if-ge v6, v8, :cond_21

    .line 375
    iget-object v8, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 376
    invoke-virtual {v3, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 375
    invoke-virtual {v4, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    move-wide/from16 v24, v9

    .end local v9    # "offset":J
    .local v24, "offset":J
    iget-object v9, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 376
    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 378
    .local v8, "fileSize":J
    add-long v26, v14, v8

    const-wide/32 v28, 0x40000000

    cmp-long v10, v26, v28

    if-lez v10, :cond_1f

    .line 379
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 380
    add-int/lit8 v10, v19, 0x1

    .line 381
    .end local v19    # "fileIndex":I
    .local v10, "fileIndex":I
    move-object/from16 v26, v7

    .end local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    .local v26, "gemfFile":Ljava/io/RandomAccessFile;
    new-instance v7, Ljava/io/RandomAccessFile;

    move-wide/from16 v27, v11

    .end local v11    # "headerSize":J
    .local v27, "headerSize":J
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11, v13}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    .end local v26    # "gemfFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    const-wide/16 v11, 0x0

    move/from16 v19, v10

    move-wide v14, v11

    .end local v14    # "currentOffset":J
    .local v11, "currentOffset":J
    goto :goto_20

    .line 384
    .end local v10    # "fileIndex":I
    .end local v27    # "headerSize":J
    .local v11, "headerSize":J
    .restart local v14    # "currentOffset":J
    .restart local v19    # "fileIndex":I
    :cond_1f
    move-object/from16 v26, v7

    move-wide/from16 v27, v11

    .end local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    .end local v11    # "headerSize":J
    .restart local v26    # "gemfFile":Ljava/io/RandomAccessFile;
    .restart local v27    # "headerSize":J
    add-long/2addr v14, v8

    .line 387
    .end local v26    # "gemfFile":Ljava/io/RandomAccessFile;
    .restart local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    :goto_20
    new-instance v10, Ljava/io/FileInputStream;

    iget-object v11, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 389
    invoke-virtual {v3, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 388
    invoke-virtual {v4, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    iget-object v12, v0, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 390
    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 392
    .local v10, "tile":Ljava/io/FileInputStream;
    const/16 v11, 0x400

    const/4 v12, 0x0

    invoke-virtual {v10, v1, v12, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v18

    move/from16 v11, v18

    .line 393
    .local v11, "read":I
    :goto_21
    const/4 v12, -0x1

    if-eq v11, v12, :cond_20

    .line 394
    const/4 v12, 0x0

    invoke-virtual {v7, v1, v12, v11}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 395
    move-object/from16 v18, v0

    const/16 v0, 0x400

    .end local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .local v18, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v10, v1, v12, v0}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    move-object/from16 v0, v18

    goto :goto_21

    .line 398
    .end local v18    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_20
    move-object/from16 v18, v0

    const/16 v0, 0x400

    const/4 v12, 0x0

    .end local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v18    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 373
    .end local v8    # "fileSize":J
    .end local v10    # "tile":Ljava/io/FileInputStream;
    .end local v11    # "read":I
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, v18

    move-object/from16 v8, v23

    move-wide/from16 v9, v24

    move-wide/from16 v11, v27

    goto/16 :goto_1f

    .end local v18    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v24    # "offset":J
    .end local v27    # "headerSize":J
    .restart local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v9    # "offset":J
    .local v11, "headerSize":J
    :cond_21
    move-object/from16 v18, v0

    move-object/from16 v26, v7

    move-wide/from16 v24, v9

    move-wide/from16 v27, v11

    const/16 v0, 0x400

    const/4 v12, 0x0

    .line 372
    .end local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v6    # "y":I
    .end local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    .end local v9    # "offset":J
    .end local v11    # "headerSize":J
    .restart local v18    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v24    # "offset":J
    .restart local v26    # "gemfFile":Ljava/io/RandomAccessFile;
    .restart local v27    # "headerSize":J
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v18

    move-object/from16 v6, v22

    move-object/from16 v8, v23

    move-wide/from16 v11, v27

    goto/16 :goto_1e

    .end local v18    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v24    # "offset":J
    .end local v26    # "gemfFile":Ljava/io/RandomAccessFile;
    .end local v27    # "headerSize":J
    .restart local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .restart local v7    # "gemfFile":Ljava/io/RandomAccessFile;
    .restart local v9    # "offset":J
    .restart local v11    # "headerSize":J
    :cond_22
    move-object/from16 v18, v0

    move-object/from16 v23, v8

    move-wide/from16 v24, v9

    move-wide/from16 v27, v11

    const/16 v0, 0x400

    const/4 v12, 0x0

    .line 401
    .end local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .end local v5    # "x":I
    .end local v9    # "offset":J
    .end local v11    # "headerSize":J
    .restart local v24    # "offset":J
    .restart local v27    # "headerSize":J
    move/from16 v5, v19

    move-object/from16 v6, v22

    move-wide/from16 v11, v27

    goto/16 :goto_1d

    .line 403
    .end local v19    # "fileIndex":I
    .end local v22    # "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    .end local v24    # "offset":J
    .end local v27    # "headerSize":J
    .local v5, "fileIndex":I
    .local v6, "ranges":Ljava/util/List;, "Ljava/util/List<Lorg/osmdroid/util/GEMFFile$GEMFRange;>;"
    .restart local v9    # "offset":J
    .restart local v11    # "headerSize":J
    :cond_23
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 406
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->openFiles()V

    .line 407
    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/util/GEMFFile;->readHeader()V

    .line 408
    return-void
.end method

.method private openFiles()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 433
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    .local v0, "base":Ljava/io/File;
    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    const/4 v1, 0x0

    .line 439
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 440
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 441
    .local v2, "nextFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 442
    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v2    # "nextFile":Ljava/io/File;
    goto :goto_0

    .line 448
    :cond_0
    return-void
.end method

.method private readHeader()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/RandomAccessFile;

    .line 458
    .local v0, "baseFile":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/RandomAccessFile;

    .line 459
    .local v3, "file":Ljava/io/RandomAccessFile;
    iget-object v4, p0, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .end local v3    # "file":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 463
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 464
    .local v2, "version":I
    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 469
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 470
    .local v3, "tile_size":I
    const/16 v4, 0x100

    if-ne v3, v4, :cond_3

    .line 475
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 477
    .local v4, "sourceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_1

    .line 478
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 479
    .local v6, "sourceIndex":I
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    .line 480
    .local v7, "sourceNameLength":I
    new-array v8, v7, [B

    .line 481
    .local v8, "nameData":[B
    invoke-virtual {v0, v8, v1, v7}, Ljava/io/RandomAccessFile;->read([BII)I

    .line 483
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v8}, Ljava/lang/String;-><init>([B)V

    .line 484
    .local v9, "sourceName":Ljava/lang/String;
    iget-object v10, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    .end local v6    # "sourceIndex":I
    .end local v7    # "sourceNameLength":I
    .end local v8    # "nameData":[B
    .end local v9    # "sourceName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 488
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    .line 489
    .local v1, "num_ranges":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 490
    new-instance v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lorg/osmdroid/util/GEMFFile$GEMFRange;-><init>(Lorg/osmdroid/util/GEMFFile;Lorg/osmdroid/util/GEMFFile$1;)V

    .line 491
    .local v6, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    .line 492
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 493
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 494
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 495
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 496
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 497
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iput-object v7, v6, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    .line 498
    iget-object v7, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    .end local v6    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 500
    .end local v5    # "i":I
    :cond_2
    return-void

    .line 471
    .end local v1    # "num_ranges":I
    .end local v4    # "sourceCount":I
    :cond_3
    new-instance v1, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad tile size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    .end local v3    # "tile_size":I
    :cond_4
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad file version: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public acceptAnySource()V
    .locals 1

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 538
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;

    .line 421
    .local v1, "file":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 422
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    goto :goto_0

    .line 423
    :cond_0
    return-void
.end method

.method public getInputStream(III)Ljava/io/InputStream;
    .locals 25
    .param p1, "pX"    # I
    .param p2, "pY"    # I
    .param p3, "pZ"    # I

    .line 559
    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v0, 0x0

    .line 561
    .local v0, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 562
    .local v2, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v10, p3

    if-ne v10, v3, :cond_1

    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    .line 563
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v8, v3, :cond_1

    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMax:Ljava/lang/Integer;

    .line 564
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v8, v3, :cond_1

    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    .line 565
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v9, v3, :cond_1

    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    .line 566
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v9, v3, :cond_1

    iget-boolean v3, v7, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->sourceIndex:Ljava/lang/Integer;

    .line 567
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget v4, v7, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    if-ne v3, v4, :cond_1

    .line 568
    :cond_0
    move-object v0, v2

    .line 569
    move-object v11, v0

    goto :goto_1

    .line 571
    .end local v2    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :cond_1
    goto :goto_0

    .line 561
    :cond_2
    move/from16 v10, p3

    move-object v11, v0

    .line 573
    .end local v0    # "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    .local v11, "range":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    :goto_1
    if-nez v11, :cond_3

    .line 574
    const/4 v0, 0x0

    return-object v0

    .line 579
    :cond_3
    const/4 v12, 0x0

    .line 580
    .local v12, "returnValue":Ljava/io/InputStream;
    const/4 v13, 0x0

    .line 581
    .local v13, "stream":Lorg/osmdroid/util/GEMFFile$GEMFInputStream;
    const/4 v14, 0x0

    .line 585
    .local v14, "byteBuffer":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v0, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMax:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    .line 586
    .local v0, "numY":I
    iget-object v1, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->xMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v15, v8, v1

    .line 587
    .local v15, "xIndex":I
    iget-object v1, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->yMin:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v16, v9, v1

    .line 588
    .local v16, "yIndex":I
    mul-int v1, v15, v0

    add-int v1, v1, v16

    int-to-long v1, v1

    .line 589
    .local v1, "offset":J
    const-wide/16 v3, 0xc

    mul-long/2addr v1, v3

    .line 590
    iget-object v3, v11, Lorg/osmdroid/util/GEMFFile$GEMFRange;->offset:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long v4, v1, v3

    .line 594
    .end local v1    # "offset":J
    .local v4, "offset":J
    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;

    move-object v2, v1

    .line 595
    .local v2, "baseFile":Ljava/io/RandomAccessFile;
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 596
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v17

    .line 597
    .local v17, "dataOffset":J
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v6

    .line 600
    .local v6, "dataLength":I
    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;

    .line 601
    .local v1, "pDataFile":Ljava/io/RandomAccessFile;
    const/16 v19, 0x0

    .line 602
    .local v19, "index":I
    iget-object v3, v7, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    move/from16 v21, v0

    const/4 v0, 0x0

    .end local v0    # "numY":I
    .local v21, "numY":I
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    cmp-long v3, v17, v22

    if-lez v3, :cond_5

    .line 603
    iget-object v3, v7, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v19

    .line 605
    .end local v19    # "index":I
    .local v0, "index":I
    .local v3, "fileListCount":I
    :goto_2
    move-object/from16 v22, v1

    .end local v1    # "pDataFile":Ljava/io/RandomAccessFile;
    .local v22, "pDataFile":Ljava/io/RandomAccessFile;
    add-int/lit8 v1, v3, -0x1

    if-ge v0, v1, :cond_4

    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    .line 606
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v1, v17, v23

    if-lez v1, :cond_4

    .line 608
    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFileSizes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    sub-long v17, v17, v23

    .line 609
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v1, v22

    goto :goto_2

    .line 612
    :cond_4
    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/RandomAccessFile;

    move v3, v0

    move-object v0, v1

    move-wide/from16 v8, v17

    .end local v22    # "pDataFile":Ljava/io/RandomAccessFile;
    .restart local v1    # "pDataFile":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 602
    .end local v0    # "index":I
    .end local v3    # "fileListCount":I
    .restart local v19    # "index":I
    :cond_5
    move-object/from16 v22, v1

    .end local v1    # "pDataFile":Ljava/io/RandomAccessFile;
    .restart local v22    # "pDataFile":Ljava/io/RandomAccessFile;
    move-wide/from16 v8, v17

    move/from16 v3, v19

    move-object/from16 v0, v22

    .line 616
    .end local v17    # "dataOffset":J
    .end local v19    # "index":I
    .end local v22    # "pDataFile":Ljava/io/RandomAccessFile;
    .local v0, "pDataFile":Ljava/io/RandomAccessFile;
    .local v3, "index":I
    .local v8, "dataOffset":J
    :goto_3
    invoke-virtual {v0, v8, v9}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 618
    new-instance v17, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;

    iget-object v1, v7, Lorg/osmdroid/util/GEMFFile;->mFileNames:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/lang/String;

    move-object/from16 v1, v17

    move-object/from16 v19, v2

    .end local v2    # "baseFile":Ljava/io/RandomAccessFile;
    .local v19, "baseFile":Ljava/io/RandomAccessFile;
    move-object/from16 v2, p0

    move-object/from16 v22, v0

    move/from16 v20, v3

    const/4 v0, 0x0

    .end local v0    # "pDataFile":Ljava/io/RandomAccessFile;
    .end local v3    # "index":I
    .local v20, "index":I
    .restart local v22    # "pDataFile":Ljava/io/RandomAccessFile;
    move-object/from16 v3, v18

    move-wide/from16 v23, v4

    .end local v4    # "offset":J
    .local v23, "offset":J
    move-wide v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;-><init>(Lorg/osmdroid/util/GEMFFile;Ljava/lang/String;JI)V

    move-object/from16 v13, v17

    .line 620
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v14, v1

    .line 623
    const/16 v1, 0x400

    .line 624
    .local v1, "bufferSize":I
    new-array v2, v1, [B

    .line 627
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 628
    .local v3, "len":I
    :cond_6
    :goto_4
    invoke-virtual {v13}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->available()I

    move-result v4

    if-lez v4, :cond_7

    .line 629
    invoke-virtual {v13, v2}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->read([B)I

    move-result v4

    move v3, v4

    .line 630
    if-lez v3, :cond_6

    .line 631
    invoke-virtual {v14, v2, v0, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_4

    .line 635
    :cond_7
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 636
    .local v0, "bits":[B
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v4

    .line 641
    .end local v0    # "bits":[B
    .end local v1    # "bufferSize":I
    .end local v2    # "buffer":[B
    .end local v3    # "len":I
    .end local v15    # "xIndex":I
    .end local v16    # "yIndex":I
    .end local v19    # "baseFile":Ljava/io/RandomAccessFile;
    .end local v20    # "index":I
    .end local v21    # "numY":I
    .end local v22    # "pDataFile":Ljava/io/RandomAccessFile;
    .end local v23    # "offset":J
    nop

    .line 643
    :try_start_1
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 646
    goto :goto_5

    .line 644
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 645
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 647
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    nop

    .line 649
    :try_start_2
    invoke-virtual {v13}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 652
    goto :goto_7

    .line 650
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 651
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7

    .line 641
    .end local v6    # "dataLength":I
    .end local v8    # "dataOffset":J
    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_8

    .line 638
    :catch_2
    move-exception v0

    .line 639
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v14, :cond_8

    .line 643
    :try_start_4
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 646
    goto :goto_6

    .line 644
    :catch_3
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 645
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 647
    .end local v0    # "e":Ljava/io/IOException;
    :cond_8
    :goto_6
    if-eqz v13, :cond_9

    .line 649
    :try_start_5
    invoke-virtual {v13}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 652
    goto :goto_7

    .line 650
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 651
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    .end local v0    # "e":Ljava/io/IOException;
    nop

    .line 655
    :cond_9
    :goto_7
    return-object v12

    .line 641
    :goto_8
    if-eqz v14, :cond_a

    .line 643
    :try_start_6
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 646
    goto :goto_9

    .line 644
    :catch_5
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 645
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 647
    .end local v0    # "e":Ljava/io/IOException;
    :cond_a
    :goto_9
    if-eqz v13, :cond_b

    .line 649
    :try_start_7
    invoke-virtual {v13}, Lorg/osmdroid/util/GEMFFile$GEMFInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 652
    goto :goto_a

    .line 650
    :catch_6
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 651
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 654
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    :goto_a
    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 512
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getSources()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getZoomLevels()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 544
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 546
    .local v0, "zoomLevels":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lorg/osmdroid/util/GEMFFile;->mRangeData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;

    .line 547
    .local v2, "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    iget-object v3, v2, Lorg/osmdroid/util/GEMFFile$GEMFRange;->zoom:Ljava/lang/Integer;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 548
    .end local v2    # "rs":Lorg/osmdroid/util/GEMFFile$GEMFRange;
    goto :goto_0

    .line 550
    :cond_0
    return-object v0
.end method

.method public selectSource(I)V
    .locals 2
    .param p1, "pSource"    # I

    .line 527
    iget-object v0, p0, Lorg/osmdroid/util/GEMFFile;->mSources:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/util/GEMFFile;->mSourceLimited:Z

    .line 529
    iput p1, p0, Lorg/osmdroid/util/GEMFFile;->mCurrentSource:I

    .line 531
    :cond_0
    return-void
.end method
