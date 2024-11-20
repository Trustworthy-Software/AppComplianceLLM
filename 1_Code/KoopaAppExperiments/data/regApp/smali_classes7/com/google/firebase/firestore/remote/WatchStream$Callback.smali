.class interface abstract Lcom/google/firebase/firestore/remote/WatchStream$Callback;
.super Ljava/lang/Object;
.source "WatchStream.java"

# interfaces
.implements Lcom/google/firebase/firestore/remote/Stream$StreamCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onWatchChange(Lcom/google/firebase/firestore/model/SnapshotVersion;Lcom/google/firebase/firestore/remote/WatchChange;)V
.end method
