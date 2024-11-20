.class public abstract Lorg/osmdroid/views/overlay/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"

# interfaces
.implements Lorg/osmdroid/views/util/constants/OverlayConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/osmdroid/views/overlay/Overlay$Snappable;
    }
.end annotation


# static fields
.field protected static final SHADOW_X_SKEW:F = -0.9f

.field protected static final SHADOW_Y_SCALE:F = 0.5f

.field private static final mRect:Landroid/graphics/Rect;

.field private static sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected mBounds:Lorg/osmdroid/util/BoundingBox;

.field private mEnabled:Z

.field private final tileSystem:Lorg/osmdroid/util/TileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 56
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->tileSystem:Lorg/osmdroid/util/TileSystem;

    .line 57
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v10, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 56
    invoke-static {}, Lorg/osmdroid/views/MapView;->getTileSystem()Lorg/osmdroid/util/TileSystem;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->tileSystem:Lorg/osmdroid/util/TileSystem;

    .line 57
    new-instance v10, Lorg/osmdroid/util/BoundingBox;

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMaxLongitude()D

    move-result-wide v4

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLatitude()D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/osmdroid/util/TileSystem;->getMinLongitude()D

    move-result-wide v8

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lorg/osmdroid/util/BoundingBox;-><init>(DDDD)V

    iput-object v10, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    .line 68
    return-void
.end method

.method protected static declared-synchronized drawAt(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZF)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "shadow"    # Z
    .param p5, "aMapOrientation"    # F

    const-class v0, Lorg/osmdroid/views/overlay/Overlay;

    monitor-enter v0

    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 295
    neg-float v1, p5

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-virtual {p0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 296
    sget-object v1, Lorg/osmdroid/views/overlay/Overlay;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 297
    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, p3

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, p2

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, p3

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    monitor-exit v0

    return-void

    .line 293
    .end local p0    # "canvas":Landroid/graphics/Canvas;
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local p2    # "x":I
    .end local p3    # "y":I
    .end local p4    # "shadow":Z
    .end local p5    # "aMapOrientation":F
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method protected static final getSafeMenuId()I
    .locals 1

    .line 114
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method protected static final getSafeMenuIdSequence(I)I
    .locals 1
    .param p0, "count"    # I

    .line 125
    sget-object v0, Lorg/osmdroid/views/overlay/Overlay;->sOrdinal:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/MapView;Z)V
    .locals 1
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;
    .param p3, "pShadow"    # Z

    .line 141
    if-eqz p3, :cond_0

    .line 142
    return-void

    .line 144
    :cond_0
    invoke-virtual {p2}, Lorg/osmdroid/views/MapView;->getProjection()Lorg/osmdroid/views/Projection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/osmdroid/views/overlay/Overlay;->draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V

    .line 145
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lorg/osmdroid/views/Projection;)V
    .locals 0
    .param p1, "pCanvas"    # Landroid/graphics/Canvas;
    .param p2, "pProjection"    # Lorg/osmdroid/views/Projection;

    .line 152
    return-void
.end method

.method public getBounds()Lorg/osmdroid/util/BoundingBox;
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mBounds:Lorg/osmdroid/util/BoundingBox;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    return v0
.end method

.method public onDetach(Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 162
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 238
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pVelocityX"    # F
    .param p4, "pVelocityY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .line 312
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 323
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FFLorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "pEvent1"    # Landroid/view/MotionEvent;
    .param p2, "pEvent2"    # Landroid/view/MotionEvent;
    .param p3, "pDistanceX"    # F
    .param p4, "pDistanceY"    # F
    .param p5, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)V
    .locals 0
    .param p1, "pEvent"    # Landroid/view/MotionEvent;
    .param p2, "pMapView"    # Lorg/osmdroid/views/MapView;

    .line 271
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 227
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Lorg/osmdroid/views/MapView;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "mapView"    # Lorg/osmdroid/views/MapView;

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "pEnabled"    # Z

    .line 93
    iput-boolean p1, p0, Lorg/osmdroid/views/overlay/Overlay;->mEnabled:Z

    .line 94
    return-void
.end method
