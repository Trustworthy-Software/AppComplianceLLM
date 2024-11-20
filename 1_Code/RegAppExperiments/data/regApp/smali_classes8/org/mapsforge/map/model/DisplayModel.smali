.class public Lorg/mapsforge/map/model/DisplayModel;
.super Lorg/mapsforge/map/model/common/Observable;
.source "DisplayModel.java"


# static fields
.field private static final DEFAULT_BACKGROUND_COLOR:I = -0x111112

.field private static final DEFAULT_MAX_TEXT_WIDTH:I = 0xb3

.field private static final DEFAULT_MAX_TEXT_WIDTH_FACTOR:F = 0.7f

.field private static final DEFAULT_TILE_SIZE:I = 0x100

.field private static defaultUserScaleFactor:F

.field private static deviceScaleFactor:F


# instance fields
.field private backgroundColor:I

.field private filter:Lorg/mapsforge/core/graphics/Filter;

.field private fixedTileSize:I

.field private maxTextWidth:I

.field private maxTextWidthFactor:F

.field private themeCallback:Lorg/mapsforge/map/rendertheme/ThemeCallback;

.field private tileSize:I

.field private tileSizeMultiple:I

.field private userScaleFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lorg/mapsforge/map/model/DisplayModel;->defaultUserScaleFactor:F

    .line 37
    sput v0, Lorg/mapsforge/map/model/DisplayModel;->deviceScaleFactor:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Lorg/mapsforge/map/model/common/Observable;-><init>()V

    .line 76
    const v0, -0x111112

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I

    .line 77
    sget-object v0, Lorg/mapsforge/core/graphics/Filter;->NONE:Lorg/mapsforge/core/graphics/Filter;

    iput-object v0, p0, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;

    .line 79
    const/16 v0, 0xb3

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    .line 80
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    .line 82
    const/16 v0, 0x100

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    .line 83
    const/16 v0, 0x40

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    .line 84
    sget v0, Lorg/mapsforge/map/model/DisplayModel;->defaultUserScaleFactor:F

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    .line 88
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setTileSize()V

    .line 89
    return-void
.end method

.method public static declared-synchronized getDefaultUserScaleFactor()F
    .locals 2

    const-class v0, Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter v0

    .line 45
    :try_start_0
    sget v1, Lorg/mapsforge/map/model/DisplayModel;->defaultUserScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 45
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getDeviceScaleFactor()F
    .locals 2

    const-class v0, Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter v0

    .line 54
    :try_start_0
    sget v1, Lorg/mapsforge/map/model/DisplayModel;->deviceScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultUserScaleFactor(F)V
    .locals 1
    .param p0, "scaleFactor"    # F

    const-class v0, Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter v0

    .line 64
    :try_start_0
    sput p0, Lorg/mapsforge/map/model/DisplayModel;->defaultUserScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 63
    .end local p0    # "scaleFactor":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setDeviceScaleFactor(F)V
    .locals 1
    .param p0, "scaleFactor"    # F

    const-class v0, Lorg/mapsforge/map/model/DisplayModel;

    monitor-enter v0

    .line 73
    :try_start_0
    sput p0, Lorg/mapsforge/map/model/DisplayModel;->deviceScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit v0

    return-void

    .line 72
    .end local p0    # "scaleFactor":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setMaxTextWidth()V
    .locals 2

    .line 266
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    int-to-float v0, v0

    iget v1, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    .line 267
    return-void
.end method

.method private setTileSize()V
    .locals 4

    .line 270
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->fixedTileSize:I

    if-nez v0, :cond_0

    .line 271
    const/high16 v0, 0x43800000    # 256.0f

    sget v1, Lorg/mapsforge/map/model/DisplayModel;->deviceScaleFactor:F

    mul-float/2addr v1, v0

    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    mul-float/2addr v1, v0

    .line 274
    .local v1, "temp":F
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    int-to-float v2, v0

    div-float v2, v1, v2

    .line 275
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    mul-int/2addr v2, v3

    .line 274
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    .line 276
    .end local v1    # "temp":F
    goto :goto_0

    .line 277
    :cond_0
    iput v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    .line 279
    :goto_0
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setMaxTextWidth()V

    .line 280
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 94
    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lorg/mapsforge/map/model/DisplayModel;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 97
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/mapsforge/map/model/DisplayModel;

    .line 98
    .local v1, "other":Lorg/mapsforge/map/model/DisplayModel;
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I

    if-eq v3, v4, :cond_2

    .line 99
    return v2

    .line 100
    :cond_2
    iget-object v3, p0, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;

    iget-object v4, v1, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;

    if-eq v3, v4, :cond_3

    .line 101
    return v2

    .line 102
    :cond_3
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->fixedTileSize:I

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->fixedTileSize:I

    if-eq v3, v4, :cond_4

    .line 103
    return v2

    .line 104
    :cond_4
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    if-eq v3, v4, :cond_5

    .line 105
    return v2

    .line 106
    :cond_5
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 107
    return v2

    .line 108
    :cond_6
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    if-eq v3, v4, :cond_7

    .line 109
    return v2

    .line 110
    :cond_7
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    if-eq v3, v4, :cond_8

    .line 111
    return v2

    .line 112
    :cond_8
    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    iget v4, v1, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    invoke-static {v4}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v4

    if-eq v3, v4, :cond_9

    .line 113
    return v2

    .line 114
    :cond_9
    return v0
.end method

.method public declared-synchronized getBackgroundColor()I
    .locals 1

    monitor-enter p0

    .line 123
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 123
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFilter()Lorg/mapsforge/core/graphics/Filter;
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaxTextWidth()I
    .locals 1

    .line 139
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    return v0
.end method

.method public declared-synchronized getScaleFactor()F
    .locals 2

    monitor-enter p0

    .line 148
    :try_start_0
    sget v0, Lorg/mapsforge/map/model/DisplayModel;->deviceScaleFactor:F

    iget v1, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-float/2addr v0, v1

    monitor-exit p0

    return v0

    .line 148
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThemeCallback()Lorg/mapsforge/map/rendertheme/ThemeCallback;
    .locals 1

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/model/DisplayModel;->themeCallback:Lorg/mapsforge/map/rendertheme/ThemeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTileSize()I
    .locals 1

    monitor-enter p0

    .line 162
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 162
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTileSizeMultiple()I
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 169
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserScaleFactor()F
    .locals 1

    monitor-enter p0

    .line 178
    :try_start_0
    iget v0, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 178
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hashCode()I
    .locals 4

    .line 183
    const/16 v0, 0x1f

    .line 184
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 185
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I

    add-int/2addr v2, v3

    .line 186
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;

    invoke-virtual {v3}, Lorg/mapsforge/core/graphics/Filter;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    .line 187
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->fixedTileSize:I

    add-int/2addr v2, v3

    .line 188
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidth:I

    add-int/2addr v1, v3

    .line 189
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v2, v3

    .line 190
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSize:I

    add-int/2addr v1, v3

    .line 191
    .end local v2    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    add-int/2addr v2, v3

    .line 192
    .end local v1    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget v3, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    add-int/2addr v1, v3

    .line 193
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public declared-synchronized setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    monitor-enter p0

    .line 202
    :try_start_0
    iput p1, p0, Lorg/mapsforge/map/model/DisplayModel;->backgroundColor:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    monitor-exit p0

    return-void

    .line 201
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    .end local p1    # "color":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFilter(Lorg/mapsforge/core/graphics/Filter;)V
    .locals 0
    .param p1, "filter"    # Lorg/mapsforge/core/graphics/Filter;

    monitor-enter p0

    .line 209
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/model/DisplayModel;->filter:Lorg/mapsforge/core/graphics/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    monitor-exit p0

    return-void

    .line 208
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    .end local p1    # "filter":Lorg/mapsforge/core/graphics/Filter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFixedTileSize(I)V
    .locals 0
    .param p1, "tileSize"    # I

    .line 218
    iput p1, p0, Lorg/mapsforge/map/model/DisplayModel;->fixedTileSize:I

    .line 219
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setTileSize()V

    .line 220
    return-void
.end method

.method public setMaxTextWidthFactor(F)V
    .locals 0
    .param p1, "maxTextWidthFactor"    # F

    .line 228
    iput p1, p0, Lorg/mapsforge/map/model/DisplayModel;->maxTextWidthFactor:F

    .line 229
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setMaxTextWidth()V

    .line 230
    return-void
.end method

.method public declared-synchronized setThemeCallback(Lorg/mapsforge/map/rendertheme/ThemeCallback;)V
    .locals 0
    .param p1, "themeCallback"    # Lorg/mapsforge/map/rendertheme/ThemeCallback;

    monitor-enter p0

    .line 236
    :try_start_0
    iput-object p1, p0, Lorg/mapsforge/map/model/DisplayModel;->themeCallback:Lorg/mapsforge/map/rendertheme/ThemeCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit p0

    return-void

    .line 235
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    .end local p1    # "themeCallback":Lorg/mapsforge/map/rendertheme/ThemeCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTileSizeMultiple(I)V
    .locals 0
    .param p1, "multiple"    # I

    monitor-enter p0

    .line 251
    :try_start_0
    iput p1, p0, Lorg/mapsforge/map/model/DisplayModel;->tileSizeMultiple:I

    .line 252
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setTileSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    monitor-exit p0

    return-void

    .line 250
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    .end local p1    # "multiple":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUserScaleFactor(F)V
    .locals 0
    .param p1, "scaleFactor"    # F

    monitor-enter p0

    .line 261
    :try_start_0
    iput p1, p0, Lorg/mapsforge/map/model/DisplayModel;->userScaleFactor:F

    .line 262
    invoke-direct {p0}, Lorg/mapsforge/map/model/DisplayModel;->setTileSize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    monitor-exit p0

    return-void

    .line 260
    .end local p0    # "this":Lorg/mapsforge/map/model/DisplayModel;
    .end local p1    # "scaleFactor":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
