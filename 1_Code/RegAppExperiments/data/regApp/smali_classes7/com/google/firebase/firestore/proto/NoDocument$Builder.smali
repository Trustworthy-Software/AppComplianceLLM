.class public final Lcom/google/firebase/firestore/proto/NoDocument$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NoDocument.java"

# interfaces
.implements Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/proto/NoDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/firestore/proto/NoDocument;",
        "Lcom/google/firebase/firestore/proto/NoDocument$Builder;",
        ">;",
        "Lcom/google/firebase/firestore/proto/NoDocumentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 254
    invoke-static {}, Lcom/google/firebase/firestore/proto/NoDocument;->access$000()Lcom/google/firebase/firestore/proto/NoDocument;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 255
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/firestore/proto/NoDocument$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firebase/firestore/proto/NoDocument$1;

    .line 247
    invoke-direct {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearName()Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 312
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->access$200(Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 313
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1

    .line 398
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 399
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->access$600(Lcom/google/firebase/firestore/proto/NoDocument;)V

    .line 400
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/proto/NoDocument;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 387
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 388
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$500(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    .line 389
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 297
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 298
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$100(Lcom/google/firebase/firestore/proto/NoDocument;Ljava/lang/String;)V

    .line 299
    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 327
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 328
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$300(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/ByteString;)V

    .line 329
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 375
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 376
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$400(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    .line 377
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firebase/firestore/proto/NoDocument$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 362
    invoke-virtual {p0}, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->copyOnWrite()V

    .line 363
    iget-object v0, p0, Lcom/google/firebase/firestore/proto/NoDocument$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/firestore/proto/NoDocument;

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/proto/NoDocument;->access$400(Lcom/google/firebase/firestore/proto/NoDocument;Lcom/google/protobuf/Timestamp;)V

    .line 364
    return-object p0
.end method
