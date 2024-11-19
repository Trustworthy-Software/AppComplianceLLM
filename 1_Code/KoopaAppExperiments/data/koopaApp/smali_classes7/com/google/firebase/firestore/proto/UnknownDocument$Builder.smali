.class public final Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UnknownDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/UnknownDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/UnknownDocument;",
        "Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/UnknownDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 256
    invoke-static {}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$000()Lcom/google/firebase/firestore/proto/UnknownDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 257
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/UnknownDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/UnknownDocument$1;

    .line 249
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 314
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$200(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 315
    return-object p0
.end method

.method public clearVersion()Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1

    .line 400
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 401
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$600(Lcom/google/firebase/firestore/proto/UnknownDocument;)V

    .line 402
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->getVersion()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasVersion()Z
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/UnknownDocument;->hasVersion()Z

    move-result v0

    return v0
.end method

.method public mergeVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 389
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 390
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$500(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/Timestamp;)V

    .line 391
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 299
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 300
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$100(Lcom/google/firebase/firestore/proto/UnknownDocument;Ljava/lang/String;)V

    .line 301
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 329
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$300(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/ByteString;)V

    .line 331
    return-object p0
.end method

.method public setVersion(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 377
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 378
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/Timestamp;)V

    .line 379
    return-object p0
.end method

.method public setVersion(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 364
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->copyOnWrite()V

    .line 365
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/UnknownDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/UnknownDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/UnknownDocument;->access$400(Lcom/google/firebase/firestore/proto/UnknownDocument;Lcom/google/protobuf/Timestamp;)V

    .line 366
    return-object p0
.end method
