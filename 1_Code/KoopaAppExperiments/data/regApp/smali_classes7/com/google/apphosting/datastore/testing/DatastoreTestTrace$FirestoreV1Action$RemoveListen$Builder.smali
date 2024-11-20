.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListenOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListenOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6649
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->access$12000()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 6650
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 6642
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTargetId()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;
    .locals 1

    .line 6691
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->copyOnWrite()V

    .line 6692
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->access$12200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;)V

    .line 6693
    return-object p0
.end method

.method public getTargetId()I
    .locals 1

    .line 6664
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->getTargetId()I

    move-result v0

    return v0
.end method

.method public setTargetId(I)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 6677
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->copyOnWrite()V

    .line 6678
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;->access$12100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$RemoveListen;I)V

    .line 6679
    return-object p0
.end method
