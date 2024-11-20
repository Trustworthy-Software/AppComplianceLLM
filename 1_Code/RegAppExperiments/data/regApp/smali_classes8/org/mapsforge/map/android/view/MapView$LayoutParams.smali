.class public Lorg/mapsforge/map/android/view/MapView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "MapView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/android/view/MapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;
    }
.end annotation


# instance fields
.field public alignment:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

.field public latLong:Lorg/mapsforge/core/model/LatLong;


# direct methods
.method public constructor <init>(IILorg/mapsforge/core/model/LatLong;Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "latLong"    # Lorg/mapsforge/core/model/LatLong;
    .param p4, "alignment"    # Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 102
    iput-object p3, p0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;->latLong:Lorg/mapsforge/core/model/LatLong;

    .line 103
    iput-object p4, p0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;->alignment:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 88
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    sget-object v0, Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;->BOTTOM_CENTER:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    iput-object v0, p0, Lorg/mapsforge/map/android/view/MapView$LayoutParams;->alignment:Lorg/mapsforge/map/android/view/MapView$LayoutParams$Alignment;

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    return-void
.end method
