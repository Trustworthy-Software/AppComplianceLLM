.class Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;
.super Ljava/lang/Thread;
.source "LatchedLazyFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->withRunningThread()Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;
    .param p2, "x0"    # Ljava/lang/String;

    .line 141
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;"
    iput-object p1, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;->this$0:Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 145
    .local p0, "this":Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;, "Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;"
    :try_start_0
    iget-object v0, p0, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture$1;->this$0:Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;

    invoke-static {v0}, Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;->access$000(Lorg/mapsforge/map/layer/hills/LatchedLazyFuture;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
