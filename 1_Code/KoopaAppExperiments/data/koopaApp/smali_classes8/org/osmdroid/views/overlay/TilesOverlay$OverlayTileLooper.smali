.class public Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;
.super Lorg/osmdroid/util/TileLooper;
.source "TilesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/views/overlay/TilesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayTileLooper"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lorg/osmdroid/views/overlay/TilesOverlay;


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 229
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 230
    invoke-direct {p0}, Lorg/osmdroid/util/TileLooper;-><init>()V

    .line 231
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/TilesOverlay;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/osmdroid/views/overlay/TilesOverlay;
    .param p2, "horizontalWrapEnabled"    # Z
    .param p3, "verticalWrapEnabled"    # Z

    .line 233
    iput-object p1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 234
    invoke-direct {p0, p2, p3}, Lorg/osmdroid/util/TileLooper;-><init>(ZZ)V

    .line 235
    return-void
.end method


# virtual methods
.method public finaliseLoop()V
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v0

    invoke-virtual {v0}, Lorg/osmdroid/tileprovider/TileStates;->finaliseLoop()V

    .line 298
    return-void
.end method

.method public handleTile(JII)V
    .locals 22
    .param p1, "pMapTileIndex"    # J
    .param p3, "pX"    # I
    .param p4, "pY"    # I

    .line 255
    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    move-wide/from16 v4, p1

    invoke-virtual {v0, v4, v5}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->getMapTile(J)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 256
    .local v0, "currentMapTile":Landroid/graphics/drawable/Drawable;
    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v6}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/osmdroid/tileprovider/TileStates;->handleTile(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v6, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    if-nez v6, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    instance-of v6, v0, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    .line 262
    .local v6, "isReusable":Z
    if-eqz v6, :cond_1

    move-object v7, v0

    check-cast v7, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    .line 263
    .local v7, "reusableBitmapDrawable":Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;
    :goto_0
    if-nez v0, :cond_2

    .line 264
    iget-object v8, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v8}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v8, v0

    goto :goto_1

    .line 263
    :cond_2
    move-object v8, v0

    .line 267
    .end local v0    # "currentMapTile":Landroid/graphics/drawable/Drawable;
    .local v8, "currentMapTile":Landroid/graphics/drawable/Drawable;
    :goto_1
    if-eqz v8, :cond_6

    .line 268
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v2, v3, v9}, Lorg/osmdroid/views/Projection;->getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 269
    if-eqz v6, :cond_3

    .line 270
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->beginUsingDrawable()V

    .line 273
    :cond_3
    if-eqz v6, :cond_4

    :try_start_0
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->isBitmapValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 274
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$100(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v8, v0

    .line 275
    const/4 v6, 0x0

    .line 277
    :cond_4
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v0, v9, v8, v10}, Lorg/osmdroid/views/overlay/TilesOverlay;->onTileReadyToDraw(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v6, :cond_6

    .line 280
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    goto :goto_2

    .line 279
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 280
    invoke-virtual {v7}, Lorg/osmdroid/tileprovider/ReusableBitmapDrawable;->finishUsingDrawable()V

    .line 281
    :cond_5
    throw v0

    .line 284
    :cond_6
    :goto_2
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugTileProviders()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 285
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/TilesOverlay;->mProjection:Lorg/osmdroid/views/Projection;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v0, v2, v3, v9}, Lorg/osmdroid/views/Projection;->getPixelFromTile(IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 286
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    invoke-static/range {p1 .. p2}, Lorg/osmdroid/util/MapTileIndex;->toString(J)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v10}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->left:I

    add-int/lit8 v10, v10, 0x1

    int-to-float v10, v10

    iget-object v11, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    .line 287
    invoke-static {v11}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    iget-object v12, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v12, v12, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    invoke-virtual {v12}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    add-float/2addr v11, v12

    iget-object v12, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v12, v12, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    .line 286
    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 288
    iget-object v13, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v14, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v15, v0

    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v0}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget-object v10, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v10, v10, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move/from16 v16, v0

    move/from16 v17, v9

    move-object/from16 v18, v10

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    iget-object v0, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    iget-object v9, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v9}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iget-object v10, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v10}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v10

    iget v10, v10, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    iget-object v11, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v11}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v11

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    iget-object v12, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v12}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$200(Lorg/osmdroid/views/overlay/TilesOverlay;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    int-to-float v12, v12

    iget-object v13, v1, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v13, v13, Lorg/osmdroid/views/overlay/TilesOverlay;->mDebugPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 293
    :cond_7
    return-void
.end method

.method public initialiseLoop()V
    .locals 5

    .line 245
    iget-object v0, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 246
    .local v0, "width":I
    iget-object v1, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mTiles:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 247
    .local v1, "height":I
    mul-int v2, v1, v0

    .line 248
    .local v2, "numNeeded":I
    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/TilesOverlay;->mTileProvider:Lorg/osmdroid/tileprovider/MapTileProviderBase;

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v4

    invoke-interface {v4}, Lorg/osmdroid/config/IConfigurationProvider;->getCacheMapTileOvershoot()S

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Lorg/osmdroid/tileprovider/MapTileProviderBase;->ensureCapacity(I)V

    .line 249
    iget-object v3, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->this$0:Lorg/osmdroid/views/overlay/TilesOverlay;

    invoke-static {v3}, Lorg/osmdroid/views/overlay/TilesOverlay;->access$000(Lorg/osmdroid/views/overlay/TilesOverlay;)Lorg/osmdroid/tileprovider/TileStates;

    move-result-object v3

    invoke-virtual {v3}, Lorg/osmdroid/tileprovider/TileStates;->initialiseLoop()V

    .line 250
    invoke-super {p0}, Lorg/osmdroid/util/TileLooper;->initialiseLoop()V

    .line 251
    return-void
.end method

.method public loop(DLorg/osmdroid/util/RectL;Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "pZoomLevel"    # D
    .param p3, "pViewPort"    # Lorg/osmdroid/util/RectL;
    .param p4, "pCanvas"    # Landroid/graphics/Canvas;

    .line 238
    iput-object p4, p0, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->mCanvas:Landroid/graphics/Canvas;

    .line 239
    invoke-virtual {p0, p1, p2, p3}, Lorg/osmdroid/views/overlay/TilesOverlay$OverlayTileLooper;->loop(DLorg/osmdroid/util/RectL;)V

    .line 240
    return-void
.end method
