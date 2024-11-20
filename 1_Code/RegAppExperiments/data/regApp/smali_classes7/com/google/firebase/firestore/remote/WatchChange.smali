.class public abstract Lcom/google/firebase/firestore/remote/WatchChange;
.super Ljava/lang/Object;
.source "WatchChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;,
        Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;,
        Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;,
        Lcom/google/firebase/firestore/remote/WatchChange$DocumentChange;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/remote/WatchChange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/remote/WatchChange$1;

    .line 31
    invoke-direct {p0}, Lcom/google/firebase/firestore/remote/WatchChange;-><init>()V

    return-void
.end method
