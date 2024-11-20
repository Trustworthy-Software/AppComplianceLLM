.class public Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;
.super Lorg/osmdroid/views/overlay/Overlay;
.source "SimpleFastPointOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;,
        Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    }
.end annotation


# instance fields
.field private clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

.field private gridBool:[[Z

.field private gridHei:I

.field private gridIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;",
            ">;"
        }
    .end annotation
.end field

.field private gridWid:I

.field private hasMoved:Z

.field private final mBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private final mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

.field private mSelectedPoint:Ljava/lang/Integer;

.field private final mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

.field private numLabels:I

.field private prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private startBoundingBox:Lorg/osmdroid/util/BoundingBox;

.field private startProjection:Lorg/osmdroid/views/Projection;

.field private viewHei:I

.field private viewWid:I


# direct methods
.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;)V
    .locals 1
    .param p1, "pointList"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .line 116
    invoke-static {}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->getDefaultStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;)V
    .locals 17
    .param p1, "pointList"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;
    .param p2, "style"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    .line 96
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lorg/osmdroid/views/overlay/Overlay;-><init>()V

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    .line 48
    new-instance v1, Lorg/osmdroid/util/BoundingBox;

    invoke-direct {v1}, Lorg/osmdroid/util/BoundingBox;-><init>()V

    iput-object v1, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 97
    move-object/from16 v1, p2

    iput-object v1, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    .line 98
    move-object/from16 v2, p1

    iput-object v2, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .line 100
    const/4 v3, 0x0

    .local v3, "east":Ljava/lang/Double;
    const/4 v4, 0x0

    .local v4, "west":Ljava/lang/Double;
    const/4 v5, 0x0

    .local v5, "north":Ljava/lang/Double;
    const/4 v6, 0x0

    .line 101
    .local v6, "south":Ljava/lang/Double;
    invoke-interface/range {p1 .. p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/osmdroid/api/IGeoPoint;

    .line 102
    .local v8, "p":Lorg/osmdroid/api/IGeoPoint;
    if-nez v8, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    if-eqz v3, :cond_1

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    :cond_1
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    .line 104
    :cond_2
    if-eqz v4, :cond_3

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_4

    :cond_3
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 105
    :cond_4
    if-eqz v5, :cond_5

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6

    :cond_5
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 106
    :cond_6
    if-eqz v6, :cond_7

    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_8

    :cond_7
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    .line 107
    .end local v8    # "p":Lorg/osmdroid/api/IGeoPoint;
    :cond_8
    goto :goto_0

    .line 109
    :cond_9
    if-eqz v3, :cond_a

    .line 110
    new-instance v7, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v15

    move-object v8, v7

    invoke-direct/range {v8 .. v16}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v7, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    goto :goto_1

    .line 112
    :cond_a
    const/4 v7, 0x0

    iput-object v7, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 113
    :goto_1
    return-void
.end method

.method private computeGrid(Lorg/osmdroid/views/MapView;)V
    .locals 17
    .param p1, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 139
    move-object/from16 v6, p0

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v7

    .line 141
    .local v7, "viewBBox":Lorg/osmdroid/util/BoundingBox;
    iput-object v7, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 142
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    .line 145
    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v0

    iget-object v2, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v0

    iget-object v2, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v0

    iget-object v2, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v0

    iget-object v2, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v2}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_b

    .line 150
    :cond_0
    new-instance v0, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v9

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v11

    .line 151
    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v13

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v15

    move-object v8, v0

    invoke-direct/range {v8 .. v16}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->prevBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 153
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v2

    if-ne v0, v2, :cond_2

    iget v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v2

    if-eq v0, v2, :cond_1

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v0, v3

    .line 159
    .local v4, "row":[Z
    invoke-static {v4, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 158
    .end local v4    # "row":[Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 154
    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    .line 163
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v8, v0

    .line 164
    .local v8, "mPositionPixels":Landroid/graphics/Point;
    invoke-virtual/range {p1 .. p1}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v9

    .line 165
    .local v9, "pj":Lorg/osmdroid/views/Projection;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    .line 166
    iput v1, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    .line 168
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/osmdroid/api/IGeoPoint;

    .line 169
    .local v11, "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-nez v11, :cond_5

    goto :goto_2

    .line 170
    :cond_5
    invoke-interface {v11}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    .line 171
    invoke-interface {v11}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 172
    invoke-interface {v11}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_a

    .line 173
    invoke-interface {v11}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual {v7}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 174
    invoke-virtual {v9, v11, v8}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 176
    iget v0, v8, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v12, v0

    .line 177
    .local v12, "gridX":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v13, v0

    .line 178
    .local v13, "gridY":I
    iget v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v12, v0, :cond_4

    iget v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v13, v0, :cond_4

    if-ltz v12, :cond_4

    if-ltz v13, :cond_4

    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v0, v0, v12

    aget-boolean v1, v0, v13

    if-eqz v1, :cond_6

    .line 180
    goto :goto_2

    .line 181
    :cond_6
    const/4 v14, 0x1

    aput-boolean v14, v0, v13

    .line 182
    iget-object v15, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    new-instance v5, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    .line 183
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move-object v0, v11

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_3

    :cond_7
    move-object v3, v1

    .line 184
    :goto_3
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, v11

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v0

    move-object v4, v0

    goto :goto_4

    :cond_8
    move-object v4, v1

    .line 185
    :goto_4
    iget-object v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v11

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v16, v0

    goto :goto_5

    :cond_9
    move-object/from16 v16, v1

    :goto_5
    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v14, v5

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;-><init>(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;Landroid/graphics/Point;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)V

    .line 182
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    .line 189
    .end local v11    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .end local v12    # "gridX":I
    .end local v13    # "gridY":I
    :cond_a
    goto/16 :goto_2

    .line 191
    .end local v8    # "mPositionPixels":Landroid/graphics/Point;
    .end local v9    # "pj":Lorg/osmdroid/views/Projection;
    :cond_b
    return-void
.end method

.method private updateGrid(Lorg/osmdroid/views/MapView;)V
    .locals 2
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 120
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    .line 121
    invoke-virtual {p1}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v0

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    .line 122
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    .line 123
    iget v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    int-to-float v0, v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    .line 124
    iget v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    .line 128
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "b"    # Z

    .line 275
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    if-eqz p3, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    move-object v11, v0

    .line 277
    .local v11, "mPositionPixels":Landroid/graphics/Point;
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v12

    .line 281
    .local v12, "pj":Lorg/osmdroid/views/Projection;
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 282
    :cond_1
    sget-object v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$1;->$SwitchMap$org$osmdroid$views$overlay$simplefastpoint$SimpleFastPointOverlayOptions$RenderingAlgorithm:[I

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    invoke-virtual {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_15

    .line 362
    :pswitch_0
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_2

    .line 363
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_2

    move v0, v14

    goto :goto_0

    :cond_2
    move v0, v15

    :goto_0
    move/from16 v16, v0

    .line 364
    .local v16, "showLabels":Z
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v17

    .line 365
    .local v17, "viewBBox":Lorg/osmdroid/util/BoundingBox;
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/osmdroid/api/IGeoPoint;

    .line 366
    .local v8, "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-nez v8, :cond_3

    goto :goto_1

    .line 367
    :cond_3
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_b

    .line 368
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 369
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_9

    .line 370
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    .line 371
    invoke-virtual {v12, v8, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 375
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v16, :cond_4

    move v4, v14

    goto :goto_2

    :cond_4
    move v4, v15

    .line 376
    :goto_2
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_3

    :cond_5
    move-object v5, v13

    .line 377
    :goto_3
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 378
    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_4

    :cond_6
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    :goto_4
    move-object v6, v0

    .line 379
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .local v1, "textStyle":Landroid/graphics/Paint;
    if-eqz v0, :cond_7

    .line 380
    move-object v7, v1

    goto :goto_5

    .end local v1    # "textStyle":Landroid/graphics/Paint;
    :cond_7
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object v7, v0

    .line 375
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v19, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .local v19, "pt1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    goto :goto_6

    .line 370
    .end local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_8
    move-object/from16 v19, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_6

    .line 369
    .end local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_9
    move-object/from16 v19, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_6

    .line 368
    .end local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_a
    move-object/from16 v19, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_6

    .line 367
    .end local v19    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_b
    move-object/from16 v19, v8

    .line 382
    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :goto_6
    goto/16 :goto_1

    .line 321
    .end local v16    # "showLabels":Z
    .end local v17    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :pswitch_1
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    if-eqz v0, :cond_d

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewHei:I

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_d

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->viewWid:I

    .line 322
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_c

    goto :goto_8

    .line 325
    :cond_c
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    array-length v1, v0

    move v2, v15

    :goto_7
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 326
    .local v3, "row":[Z
    invoke-static {v3, v15}, Ljava/util/Arrays;->fill([ZZ)V

    .line 325
    .end local v3    # "row":[Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 323
    :cond_d
    :goto_8
    invoke-direct {v9, v10}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->updateGrid(Lorg/osmdroid/views/MapView;)V

    .line 328
    :cond_e
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_f

    .line 329
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_f

    move v0, v14

    goto :goto_9

    :cond_f
    move v0, v15

    :goto_9
    move/from16 v16, v0

    .line 332
    .restart local v16    # "showLabels":Z
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v17

    .line 333
    .restart local v17    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lorg/osmdroid/api/IGeoPoint;

    .line 334
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    if-nez v8, :cond_10

    goto :goto_a

    .line 335
    :cond_10
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1a

    .line 336
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_19

    .line 337
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_18

    .line 338
    invoke-interface {v8}, Lorg/osmdroid/api/IGeoPoint;->getLongitude()D

    move-result-wide v0

    invoke-virtual/range {v17 .. v17}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_17

    .line 339
    invoke-virtual {v12, v8, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 342
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 343
    .local v7, "gridX":I
    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCellSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v6, v0

    .line 344
    .local v6, "gridY":I
    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridWid:I

    if-ge v7, v0, :cond_16

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridHei:I

    if-ge v6, v0, :cond_16

    if-ltz v7, :cond_16

    if-ltz v6, :cond_16

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    aget-object v0, v0, v7

    aget-boolean v1, v0, v6

    if-eqz v1, :cond_11

    .line 346
    goto :goto_a

    .line 347
    :cond_11
    aput-boolean v14, v0, v6

    .line 350
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v2, v0

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v16, :cond_12

    move v4, v14

    goto :goto_b

    :cond_12
    move v4, v15

    .line 351
    :goto_b
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_13

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/LabelledGeoPoint;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_c

    :cond_13
    move-object v5, v13

    .line 352
    :goto_c
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 353
    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getPointStyle()Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_d

    :cond_14
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    :goto_d
    move-object/from16 v19, v0

    .line 354
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v0, v8

    check-cast v0, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;

    invoke-virtual {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/StyledLabelledGeoPoint;->getTextStyle()Landroid/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .restart local v1    # "textStyle":Landroid/graphics/Paint;
    if-eqz v0, :cond_15

    .line 355
    move-object/from16 v20, v1

    goto :goto_e

    .end local v1    # "textStyle":Landroid/graphics/Paint;
    :cond_15
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    .line 350
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v21, v6

    .end local v6    # "gridY":I
    .local v21, "gridY":I
    move-object/from16 v6, v19

    move/from16 v19, v7

    .end local v7    # "gridX":I
    .local v19, "gridX":I
    move-object/from16 v7, v20

    move-object/from16 v20, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .local v20, "pt1":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    goto :goto_f

    .line 344
    .end local v19    # "gridX":I
    .end local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .end local v21    # "gridY":I
    .restart local v6    # "gridY":I
    .restart local v7    # "gridX":I
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_16
    move/from16 v21, v6

    move/from16 v19, v7

    move-object/from16 v20, v8

    .end local v6    # "gridY":I
    .end local v7    # "gridX":I
    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v19    # "gridX":I
    .restart local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v21    # "gridY":I
    goto/16 :goto_a

    .line 338
    .end local v19    # "gridX":I
    .end local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .end local v21    # "gridY":I
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_17
    move-object/from16 v20, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_f

    .line 337
    .end local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_18
    move-object/from16 v20, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_f

    .line 336
    .end local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_19
    move-object/from16 v20, v8

    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    goto :goto_f

    .line 335
    .end local v20    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :cond_1a
    move-object/from16 v20, v8

    .line 357
    .end local v8    # "pt1":Lorg/osmdroid/api/IGeoPoint;
    :goto_f
    goto/16 :goto_a

    .line 358
    :cond_1b
    goto/16 :goto_15

    .line 288
    .end local v16    # "showLabels":Z
    .end local v17    # "viewBBox":Lorg/osmdroid/util/BoundingBox;
    :pswitch_2
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridBool:[[Z

    if-eqz v0, :cond_1c

    iget-boolean v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    if-nez v0, :cond_1d

    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 289
    :cond_1c
    invoke-direct {v9, v10}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->computeGrid(Lorg/osmdroid/views/MapView;)V

    .line 292
    :cond_1d
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatNorth()D

    move-result-wide v1

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonWest()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v8, v0

    .line 293
    .local v8, "nw":Lorg/osmdroid/api/IGeoPoint;
    new-instance v0, Lorg/osmdroid/util/GeoPoint;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v1}, Lorg/osmdroid/util/BoundingBox;->getLatSouth()D

    move-result-wide v1

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v3}, Lorg/osmdroid/util/BoundingBox;->getLonEast()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/osmdroid/util/GeoPoint;-><init>(DD)V

    move-object v7, v0

    .line 294
    .local v7, "se":Lorg/osmdroid/api/IGeoPoint;
    invoke-virtual {v12, v8, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 295
    .local v6, "pNw":Landroid/graphics/Point;
    invoke-virtual {v12, v7, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v5

    .line 296
    .local v5, "pSe":Landroid/graphics/Point;
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    invoke-virtual {v0, v7, v13}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v13

    .line 297
    .local v13, "pStartSe":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    iget v2, v13, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v2, v5, Landroid/graphics/Point;->y:I

    iget v3, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v0

    .line 298
    .local v4, "dGz":Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v1, v4, Landroid/graphics/Point;->x:I

    iget v2, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget v2, v4, Landroid/graphics/Point;->y:I

    iget v3, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    move-object v3, v0

    .line 301
    .local v3, "dd":Landroid/graphics/Point;
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->DENSITY_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_1e

    iget v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->numLabels:I

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMaxNShownLabels:I

    if-le v0, v1, :cond_1f

    :cond_1e
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mLabelPolicy:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;->ZOOM_THRESHOLD:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$LabelPolicy;

    if-ne v0, v1, :cond_20

    .line 305
    invoke-virtual/range {p2 .. p2}, Lorg/osmdroid/views/MapView;->getZoomLevelDouble()D

    move-result-wide v0

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mMinZoomShowLabels:I

    int-to-double v14, v2

    cmpl-double v0, v0, v14

    if-ltz v0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    goto :goto_10

    :cond_20
    const/4 v0, 0x0

    :goto_10
    move v14, v0

    .line 307
    .local v14, "showLabels":Z
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->gridIndex:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_11
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;

    .line 308
    .local v2, "slp":Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    iget v0, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->x:I

    iget v1, v3, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v1

    iget v1, v13, Landroid/graphics/Point;->x:I

    div-int/2addr v0, v1

    int-to-float v1, v0

    .line 309
    .local v1, "tx":F
    iget v0, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->y:I

    move-object/from16 v18, v4

    .end local v4    # "dGz":Landroid/graphics/Point;
    .local v18, "dGz":Landroid/graphics/Point;
    iget v4, v3, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, v4

    iget v4, v13, Landroid/graphics/Point;->y:I

    div-int/2addr v0, v4

    int-to-float v4, v0

    .line 311
    .local v4, "ty":F
    iget v0, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->x:I

    move-object/from16 v19, v3

    .end local v3    # "dd":Landroid/graphics/Point;
    .local v19, "dd":Landroid/graphics/Point;
    iget v3, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    add-float v3, v0, v1

    iget v0, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->y:I

    move/from16 v20, v1

    .end local v1    # "tx":F
    .local v20, "tx":F
    iget v1, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    add-float v21, v0, v4

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    .line 312
    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isLabelled()Z

    move-result v0

    if-eqz v0, :cond_21

    if-eqz v14, :cond_21

    const/16 v22, 0x1

    goto :goto_12

    :cond_21
    const/16 v22, 0x0

    :goto_12
    invoke-static {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$000(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Ljava/lang/String;

    move-result-object v23

    .line 313
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-static {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-static {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$100(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v0

    goto :goto_13

    :cond_22
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mPointStyle:Landroid/graphics/Paint;

    :goto_13
    move-object/from16 v24, v0

    .line 314
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v0}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->isStyled()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {v2}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;->access$200(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;)Landroid/graphics/Paint;

    move-result-object v0

    move-object v1, v0

    .local v1, "textStyle":Landroid/graphics/Paint;
    if-eqz v0, :cond_23

    .line 315
    move-object/from16 v25, v1

    goto :goto_14

    .end local v1    # "textStyle":Landroid/graphics/Paint;
    :cond_23
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mTextStyle:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 311
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v26, v2

    .end local v2    # "slp":Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    .local v26, "slp":Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    move v2, v3

    move/from16 v3, v21

    move/from16 v21, v4

    .end local v4    # "ty":F
    .local v21, "ty":F
    move/from16 v4, v22

    move-object/from16 v22, v5

    .end local v5    # "pSe":Landroid/graphics/Point;
    .local v22, "pSe":Landroid/graphics/Point;
    move-object/from16 v5, v23

    move-object/from16 v23, v6

    .end local v6    # "pNw":Landroid/graphics/Point;
    .local v23, "pNw":Landroid/graphics/Point;
    move-object/from16 v6, v24

    move-object/from16 v24, v7

    .end local v7    # "se":Lorg/osmdroid/api/IGeoPoint;
    .local v24, "se":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v7, v25

    move-object/from16 v25, v8

    .end local v8    # "nw":Lorg/osmdroid/api/IGeoPoint;
    .local v25, "nw":Lorg/osmdroid/api/IGeoPoint;
    move-object/from16 v8, p2

    invoke-virtual/range {v0 .. v8}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V

    .line 316
    .end local v26    # "slp":Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$StyledLabelledPoint;
    move-object/from16 v4, v18

    move-object/from16 v3, v19

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto/16 :goto_11

    .line 317
    .end local v18    # "dGz":Landroid/graphics/Point;
    .end local v19    # "dd":Landroid/graphics/Point;
    .end local v20    # "tx":F
    .end local v21    # "ty":F
    .end local v22    # "pSe":Landroid/graphics/Point;
    .end local v23    # "pNw":Landroid/graphics/Point;
    .end local v24    # "se":Lorg/osmdroid/api/IGeoPoint;
    .end local v25    # "nw":Lorg/osmdroid/api/IGeoPoint;
    .restart local v3    # "dd":Landroid/graphics/Point;
    .local v4, "dGz":Landroid/graphics/Point;
    .restart local v5    # "pSe":Landroid/graphics/Point;
    .restart local v6    # "pNw":Landroid/graphics/Point;
    .restart local v7    # "se":Lorg/osmdroid/api/IGeoPoint;
    .restart local v8    # "nw":Lorg/osmdroid/api/IGeoPoint;
    :cond_24
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .line 387
    .end local v3    # "dd":Landroid/graphics/Point;
    .end local v4    # "dGz":Landroid/graphics/Point;
    .end local v5    # "pSe":Landroid/graphics/Point;
    .end local v6    # "pNw":Landroid/graphics/Point;
    .end local v7    # "se":Lorg/osmdroid/api/IGeoPoint;
    .end local v8    # "nw":Lorg/osmdroid/api/IGeoPoint;
    .end local v13    # "pStartSe":Landroid/graphics/Point;
    .end local v14    # "showLabels":Z
    :cond_25
    :goto_15
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-ge v0, v1, :cond_28

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    .line 388
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    if-eqz v0, :cond_27

    .line 390
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v0

    invoke-virtual {v12, v0, v11}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 391
    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_26

    .line 392
    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v11, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget-object v2, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v2, v2, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    iget-object v3, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v3, v3, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 395
    :cond_26
    move-object/from16 v4, p1

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v14, v0, v1

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    sub-float v15, v0, v1

    iget v0, v11, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float v16, v0, v1

    iget v0, v11, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v1, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v1, v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedCircleRadius:F

    add-float v17, v0, v1

    iget-object v0, v9, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSelectedPointStyle:Landroid/graphics/Paint;

    move-object/from16 v13, p1

    move-object/from16 v18, v0

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_16

    .line 388
    :cond_27
    move-object/from16 v4, p1

    goto :goto_16

    .line 387
    :cond_28
    move-object/from16 v4, p1

    .line 401
    :goto_16
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected drawPointAt(Landroid/graphics/Canvas;FFZLjava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;Lorg/osmdroid/views/MapView;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "showLabel"    # Z
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "pointStyle"    # Landroid/graphics/Paint;
    .param p7, "textStyle"    # Landroid/graphics/Paint;
    .param p8, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 404
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 405
    invoke-virtual {p8}, Lorg/osmdroid/views/MapView;->getMapOrientation()F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 406
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mSymbol:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;->CIRCLE:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$Shape;

    if-ne v0, v1, :cond_0

    .line 407
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    invoke-virtual {p1, p2, p3, v0, p6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v2, p2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v3, p3, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float v4, p2, v0

    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    add-float v5, p3, v0

    move-object v1, p1

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 413
    :goto_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    .line 414
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mCircleRadius:F

    sub-float v0, p3, v0

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    invoke-virtual {p1, p5, p2, v0, p7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 415
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 416
    return-void
.end method

.method public getBoundingBox()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 265
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mBoundingBox:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public getSelectedPoint()Ljava/lang/Integer;
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStyle()Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    return-object v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 222
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-boolean v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mClickable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, "minHyp":Ljava/lang/Float;
    const/4 v2, -0x1

    .line 226
    .local v2, "closest":I
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 227
    .local v3, "tmp":Landroid/graphics/Point;
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v4

    .line 229
    .local v4, "pj":Lorg/osmdroid/views/Projection;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 230
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    iget-object v6, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v6, v5}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->get(I)Lorg/osmdroid/api/IGeoPoint;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Lorg/osmdroid/views/Projection;->toPixels(Lorg/osmdroid/api/IGeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v6, v8

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, v3, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    .line 235
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 236
    .local v6, "hyp":F
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_4

    .line 237
    :cond_3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 238
    move v2, v5

    .line 229
    .end local v6    # "hyp":F
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 241
    .end local v5    # "i":I
    :cond_5
    if-nez v0, :cond_6

    return v1

    .line 242
    :cond_6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->setSelectedPoint(Ljava/lang/Integer;)V

    .line 243
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    .line 244
    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    if-eqz v1, :cond_7

    iget-object v5, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;->onClick(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;Ljava/lang/Integer;)V

    .line 245
    :cond_7
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 195
    iget-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mStyle:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;

    iget-object v0, v0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions;->mAlgorithm:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    sget-object v1, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;->MAXIMUM_OPTIMIZATION:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlayOptions$RenderingAlgorithm;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 196
    return v2

    .line 197
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 204
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    .line 205
    goto :goto_0

    .line 208
    :pswitch_1
    iput-boolean v2, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->hasMoved:Z

    .line 209
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 210
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    .line 211
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->invalidate()V

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getBoundingBox()Lorg/osmdroid/util/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startBoundingBox:Lorg/osmdroid/util/BoundingBox;

    .line 200
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->startProjection:Lorg/osmdroid/views/Projection;

    .line 201
    nop

    .line 214
    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setOnClickListener(Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    .line 269
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->clickListener:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$OnClickListener;

    .line 270
    return-void
.end method

.method public setSelectedPoint(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "toSelect"    # Ljava/lang/Integer;

    .line 254
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mPointList:Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;

    invoke-interface {v1}, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay$PointAdapter;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iput-object p1, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    goto :goto_1

    .line 255
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/simplefastpoint/SimpleFastPointOverlay;->mSelectedPoint:Ljava/lang/Integer;

    .line 258
    :goto_1
    return-void
.end method
