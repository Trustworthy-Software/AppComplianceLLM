.class public final Lcom/google/firestore/v1/RollbackRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "RollbackRequest.java"

# interfaces
.implements Lcom/google/firestore/v1/RollbackRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/RollbackRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/RollbackRequest;",
        "Lcom/google/firestore/v1/RollbackRequest$Builder;",
        ">;",
        "Lcom/google/firestore/v1/RollbackRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 228
    invoke-static {}, Lcom/google/firestore/v1/RollbackRequest;->access$000()Lcom/google/firestore/v1/RollbackRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 229
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/RollbackRequest$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/RollbackRequest$1;

    .line 221
    invoke-direct {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearDatabase()Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1

    .line 285
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 286
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RollbackRequest;->access$200(Lcom/google/firestore/v1/RollbackRequest;)V

    .line 287
    return-object p0
.end method

.method public clearTransaction()Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1

    .line 341
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 342
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0}, Lcom/google/firestore/v1/RollbackRequest;->access$500(Lcom/google/firestore/v1/RollbackRequest;)V

    .line 343
    return-object p0
.end method

.method public getDatabase()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getDatabase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getDatabaseBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-virtual {v0}, Lcom/google/firestore/v1/RollbackRequest;->getTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setDatabase(Ljava/lang/String;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 271
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 272
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$100(Lcom/google/firestore/v1/RollbackRequest;Ljava/lang/String;)V

    .line 273
    return-object p0
.end method

.method public setDatabaseBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 301
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 302
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$300(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V

    .line 303
    return-object p0
.end method

.method public setTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/RollbackRequest$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 328
    invoke-virtual {p0}, Lcom/google/firestore/v1/RollbackRequest$Builder;->copyOnWrite()V

    .line 329
    iget-object v0, p0, Lcom/google/firestore/v1/RollbackRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/RollbackRequest;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/RollbackRequest;->access$400(Lcom/google/firestore/v1/RollbackRequest;Lcom/google/protobuf/ByteString;)V

    .line 330
    return-object p0
.end method
