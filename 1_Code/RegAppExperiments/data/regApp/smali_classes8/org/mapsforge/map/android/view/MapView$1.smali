.class Lorg/mapsforge/map/android/view/MapView$1;
.super Ljava/lang/Object;
.source "MapView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapsforge/map/android/view/MapView;->onChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/android/view/MapView;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/android/view/MapView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/android/view/MapView;

    .line 296
    iput-object p1, p0, Lorg/mapsforge/map/android/view/MapView$1;->this$0:Lorg/mapsforge/map/android/view/MapView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/mapsforge/map/android/view/MapView$1;->this$0:Lorg/mapsforge/map/android/view/MapView;

    invoke-virtual {v0}, Lorg/mapsforge/map/android/view/MapView;->requestLayout()V

    .line 300
    return-void
.end method
