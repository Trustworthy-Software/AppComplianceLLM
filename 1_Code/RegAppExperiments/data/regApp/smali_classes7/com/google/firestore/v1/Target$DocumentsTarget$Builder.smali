.class public final Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Target.java"

# interfaces
.implements Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/Target$DocumentsTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/Target$DocumentsTarget;",
        "Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;",
        ">;",
        "Lcom/google/firestore/v1/Target$DocumentsTargetOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 343
    invoke-static {}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$000()Lcom/google/firestore/v1/Target$DocumentsTarget;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 344
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/Target$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/Target$1;

    .line 336
    invoke-direct {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllDocuments(Ljava/lang/Iterable;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;"
        }
    .end annotation

    .line 463
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->copyOnWrite()V

    .line 464
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$300(Lcom/google/firestore/v1/Target$DocumentsTarget;Ljava/lang/Iterable;)V

    .line 465
    return-object p0
.end method

.method public addDocuments(Ljava/lang/String;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 445
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$200(Lcom/google/firestore/v1/Target$DocumentsTarget;Ljava/lang/String;)V

    .line 447
    return-object p0
.end method

.method public addDocumentsBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 497
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->copyOnWrite()V

    .line 498
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$500(Lcom/google/firestore/v1/Target$DocumentsTarget;Lcom/google/protobuf/ByteString;)V

    .line 499
    return-object p0
.end method

.method public clearDocuments()Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->copyOnWrite()V

    .line 480
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$400(Lcom/google/firestore/v1/Target$DocumentsTarget;)V

    .line 481
    return-object p0
.end method

.method public getDocuments(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 393
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocuments(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1
    .param p1, "index"    # I

    .line 410
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocumentsBytes(I)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentsCount()I
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocumentsCount()I

    move-result v0

    return v0
.end method

.method public getDocumentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    .line 362
    invoke-virtual {v0}, Lcom/google/firestore/v1/Target$DocumentsTarget;->getDocumentsList()Ljava/util/List;

    move-result-object v0

    .line 361
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setDocuments(ILjava/lang/String;)Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .line 427
    invoke-virtual {p0}, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->copyOnWrite()V

    .line 428
    iget-object v0, p0, Lcom/google/firestore/v1/Target$DocumentsTarget$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/Target$DocumentsTarget;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/Target$DocumentsTarget;->access$100(Lcom/google/firestore/v1/Target$DocumentsTarget;ILjava/lang/String;)V

    .line 429
    return-object p0
.end method
