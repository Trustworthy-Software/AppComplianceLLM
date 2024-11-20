.class public Lorg/osmdroid/util/UrlBackoff;
.super Ljava/lang/Object;
.source "UrlBackoff.java"


# static fields
.field private static final mExponentialBackoffDurationInMillisDefault:[J


# instance fields
.field private final mDelays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/osmdroid/util/Delay;",
            ">;"
        }
    .end annotation
.end field

.field private mExponentialBackoffDurationInMillis:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillisDefault:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x1388
        0x3a98
        0xea60
        0x1d4c0
        0x493e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillisDefault:[J

    iput-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 51
    monitor-exit v0

    .line 52
    return-void

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public next(Ljava/lang/String;)V
    .locals 3
    .param p1, "pUrl"    # Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    .line 22
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/Delay;

    .line 23
    .local v1, "delay":Lorg/osmdroid/util/Delay;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-nez v1, :cond_0

    .line 25
    new-instance v0, Lorg/osmdroid/util/Delay;

    iget-object v2, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    invoke-direct {v0, v2}, Lorg/osmdroid/util/Delay;-><init>([J)V

    .line 26
    .end local v1    # "delay":Lorg/osmdroid/util/Delay;
    .local v0, "delay":Lorg/osmdroid/util/Delay;
    iget-object v2, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v2

    .line 27
    :try_start_1
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    monitor-exit v2

    move-object v1, v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 30
    .end local v0    # "delay":Lorg/osmdroid/util/Delay;
    .restart local v1    # "delay":Lorg/osmdroid/util/Delay;
    :cond_0
    invoke-virtual {v1}, Lorg/osmdroid/util/Delay;->next()J

    .line 32
    :goto_0
    return-void

    .line 23
    .end local v1    # "delay":Lorg/osmdroid/util/Delay;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public remove(Ljava/lang/String;)Lorg/osmdroid/util/Delay;
    .locals 2
    .param p1, "pUrl"    # Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    .line 36
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/Delay;

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setExponentialBackoffDurationInMillis([J)V
    .locals 0
    .param p1, "pExponentialBackoffDurationInMillis"    # [J

    .line 55
    iput-object p1, p0, Lorg/osmdroid/util/UrlBackoff;->mExponentialBackoffDurationInMillis:[J

    .line 56
    return-void
.end method

.method public shouldWait(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pUrl"    # Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lorg/osmdroid/util/UrlBackoff;->mDelays:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/osmdroid/util/Delay;

    .line 44
    .local v1, "delay":Lorg/osmdroid/util/Delay;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/osmdroid/util/Delay;->shouldWait()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 44
    .end local v1    # "delay":Lorg/osmdroid/util/Delay;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
