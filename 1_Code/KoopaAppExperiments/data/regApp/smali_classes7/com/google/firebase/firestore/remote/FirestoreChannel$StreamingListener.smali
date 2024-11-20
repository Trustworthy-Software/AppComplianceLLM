.class public abstract Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;
.super Ljava/lang/Object;
.source "FirestoreChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/FirestoreChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "StreamingListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    .local p0, "this":Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;, "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose(Lio/grpc/Status;)V
    .locals 0
    .param p1, "status"    # Lio/grpc/Status;

    .line 51
    .local p0, "this":Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;, "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<TT;>;"
    return-void
.end method

.method public onMessage(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener;, "Lcom/google/firebase/firestore/remote/FirestoreChannel$StreamingListener<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    return-void
.end method
