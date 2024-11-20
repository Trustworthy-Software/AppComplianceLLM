.class public final Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MutationQueue.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/MutationQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/MutationQueue;",
        "Lcom/google/firebase/firestore/proto/MutationQueue$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/MutationQueueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$000()Lcom/google/firebase/firestore/proto/MutationQueue;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 214
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/MutationQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/MutationQueue$1;

    .line 206
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearLastAcknowledgedBatchId()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    .line 261
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->copyOnWrite()V

    .line 262
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$200(Lcom/google/firebase/firestore/proto/MutationQueue;)V

    .line 263
    return-object p0
.end method

.method public clearLastStreamToken()Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1

    .line 310
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->copyOnWrite()V

    .line 311
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$400(Lcom/google/firebase/firestore/proto/MutationQueue;)V

    .line 312
    return-object p0
.end method

.method public getLastAcknowledgedBatchId()I
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastAcknowledgedBatchId()I

    move-result v0

    return v0
.end method

.method public getLastStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/MutationQueue;->getLastStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setLastAcknowledgedBatchId(I)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 245
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->copyOnWrite()V

    .line 246
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$100(Lcom/google/firebase/firestore/proto/MutationQueue;I)V

    .line 247
    return-object p0
.end method

.method public setLastStreamToken(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/MutationQueue$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 294
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/MutationQueue$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/MutationQueue;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/MutationQueue;->access$300(Lcom/google/firebase/firestore/proto/MutationQueue;Lcom/google/protobuf/ByteString;)V

    .line 296
    return-object p0
.end method
