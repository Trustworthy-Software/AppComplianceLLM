.class public final Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DatastoreTestTrace.java"

# interfaces
.implements Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;",
        ">;",
        "Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3115
    invoke-static {}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5000()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3116
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$1;

    .line 3108
    invoke-direct {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRequest()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1

    .line 3161
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3162
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5300(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V

    .line 3163
    return-object p0
.end method

.method public clearResponse()Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1

    .line 3208
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3209
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5600(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;)V

    .line 3210
    return-object p0
.end method

.method public getRequest()Lcom/google/firestore/v1/DeleteDocumentRequest;
    .locals 1

    .line 3131
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->getRequest()Lcom/google/firestore/v1/DeleteDocumentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/google/protobuf/Empty;
    .locals 1

    .line 3178
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->getResponse()Lcom/google/protobuf/Empty;

    move-result-object v0

    return-object v0
.end method

.method public hasRequest()Z
    .locals 1

    .line 3124
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->hasRequest()Z

    move-result v0

    return v0
.end method

.method public hasResponse()Z
    .locals 1

    .line 3171
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {v0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->hasResponse()Z

    move-result v0

    return v0
.end method

.method public mergeRequest(Lcom/google/firestore/v1/DeleteDocumentRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DeleteDocumentRequest;

    .line 3154
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3155
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5200(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/firestore/v1/DeleteDocumentRequest;)V

    .line 3156
    return-object p0
.end method

.method public mergeResponse(Lcom/google/protobuf/Empty;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Empty;

    .line 3201
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3202
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5500(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/protobuf/Empty;)V

    .line 3203
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;

    .line 3146
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3147
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {p1}, Lcom/google/firestore/v1/DeleteDocumentRequest$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/DeleteDocumentRequest;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/firestore/v1/DeleteDocumentRequest;)V

    .line 3148
    return-object p0
.end method

.method public setRequest(Lcom/google/firestore/v1/DeleteDocumentRequest;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/DeleteDocumentRequest;

    .line 3137
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3138
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5100(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/firestore/v1/DeleteDocumentRequest;)V

    .line 3139
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Empty$Builder;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Empty$Builder;

    .line 3193
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3194
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/Empty$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Empty;

    invoke-static {v0, v1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/protobuf/Empty;)V

    .line 3195
    return-object p0
.end method

.method public setResponse(Lcom/google/protobuf/Empty;)Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Empty;

    .line 3184
    invoke-virtual {p0}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->copyOnWrite()V

    .line 3185
    iget-object v0, p0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;

    invoke-static {v0, p1}, Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;->access$5400(Lcom/google/apphosting/datastore/testing/DatastoreTestTrace$FirestoreV1Action$DeleteDocument;Lcom/google/protobuf/Empty;)V

    .line 3186
    return-object p0
.end method
