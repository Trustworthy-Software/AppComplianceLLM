.class Lorg/mapsforge/map/layer/queue/QueueItem;
.super Ljava/lang/Object;
.source "QueueItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/mapsforge/map/layer/queue/Job;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final object:Lorg/mapsforge/map/layer/queue/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private priority:D


# direct methods
.method constructor <init>(Lorg/mapsforge/map/layer/queue/Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 21
    .local p0, "this":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    .local p1, "object":Lorg/mapsforge/map/layer/queue/Job;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 27
    .local p0, "this":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    if-ne p0, p1, :cond_0

    .line 28
    const/4 v0, 0x1

    return v0

    .line 29
    :cond_0
    instance-of v0, p1, Lorg/mapsforge/map/layer/queue/QueueItem;

    if-nez v0, :cond_1

    .line 30
    const/4 v0, 0x0

    return v0

    .line 32
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/mapsforge/map/layer/queue/QueueItem;

    .line 33
    .local v0, "other":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<*>;"
    iget-object v1, p0, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    iget-object v2, v0, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    invoke-virtual {v1, v2}, Lorg/mapsforge/map/layer/queue/Job;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method getPriority()D
    .locals 2

    .line 45
    .local p0, "this":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    iget-wide v0, p0, Lorg/mapsforge/map/layer/queue/QueueItem;->priority:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 38
    .local p0, "this":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    iget-object v0, p0, Lorg/mapsforge/map/layer/queue/QueueItem;->object:Lorg/mapsforge/map/layer/queue/Job;

    invoke-virtual {v0}, Lorg/mapsforge/map/layer/queue/Job;->hashCode()I

    move-result v0

    return v0
.end method

.method setPriority(D)V
    .locals 3
    .param p1, "priority"    # D

    .line 52
    .local p0, "this":Lorg/mapsforge/map/layer/queue/QueueItem;, "Lorg/mapsforge/map/layer/queue/QueueItem<TT;>;"
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iput-wide p1, p0, Lorg/mapsforge/map/layer/queue/QueueItem;->priority:D

    .line 56
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
