.class public final Lcom/google/firestore/v1/DocumentChange$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "DocumentChange.java"

# interfaces
.implements Lcom/google/firestore/v1/DocumentChangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/DocumentChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/DocumentChange;",
        "Lcom/google/firestore/v1/DocumentChange$Builder;",
        ">;",
        "Lcom/google/firestore/v1/DocumentChangeOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 394
    invoke-static {}, Lcom/google/firestore/v1/DocumentChange;->access$000()Lcom/google/firestore/v1/DocumentChange;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 395
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/DocumentChange$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/DocumentChange$1;

    .line 387
    invoke-direct {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllRemovedTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentChange$Builder;"
        }
    .end annotation

    .line 651
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 652
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$1000(Lcom/google/firestore/v1/DocumentChange;Ljava/lang/Iterable;)V

    .line 653
    return-object p0
.end method

.method public addAllTargetIds(Ljava/lang/Iterable;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/firestore/v1/DocumentChange$Builder;"
        }
    .end annotation

    .line 554
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 555
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$600(Lcom/google/firestore/v1/DocumentChange;Ljava/lang/Iterable;)V

    .line 556
    return-object p0
.end method

.method public addRemovedTargetIds(I)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 636
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 637
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$900(Lcom/google/firestore/v1/DocumentChange;I)V

    .line 638
    return-object p0
.end method

.method public addTargetIds(I)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 539
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 540
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$500(Lcom/google/firestore/v1/DocumentChange;I)V

    .line 541
    return-object p0
.end method

.method public clearDocument()Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1

    .line 470
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 471
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentChange;->access$300(Lcom/google/firestore/v1/DocumentChange;)V

    .line 472
    return-object p0
.end method

.method public clearRemovedTargetIds()Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1

    .line 664
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 665
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentChange;->access$1100(Lcom/google/firestore/v1/DocumentChange;)V

    .line 666
    return-object p0
.end method

.method public clearTargetIds()Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 568
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0}, Lcom/google/firestore/v1/DocumentChange;->access$700(Lcom/google/firestore/v1/DocumentChange;)V

    .line 569
    return-object p0
.end method

.method public getDocument()Lcom/google/firestore/v1/Document;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getDocument()Lcom/google/firestore/v1/Document;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 609
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->getRemovedTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsCount()I
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getRemovedTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getRemovedTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    .line 584
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getRemovedTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 583
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTargetIds(I)I
    .locals 1
    .param p1, "index"    # I

    .line 512
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->getTargetIds(I)I

    move-result v0

    return v0
.end method

.method public getTargetIdsCount()I
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getTargetIdsCount()I

    move-result v0

    return v0
.end method

.method public getTargetIdsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    .line 487
    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->getTargetIdsList()Ljava/util/List;

    move-result-object v0

    .line 486
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasDocument()Z
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {v0}, Lcom/google/firestore/v1/DocumentChange;->hasDocument()Z

    move-result v0

    return v0
.end method

.method public mergeDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 458
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 459
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$200(Lcom/google/firestore/v1/DocumentChange;Lcom/google/firestore/v1/Document;)V

    .line 460
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document$Builder;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/Document$Builder;

    .line 445
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 446
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-virtual {p1}, Lcom/google/firestore/v1/Document$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/Document;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/DocumentChange;->access$100(Lcom/google/firestore/v1/DocumentChange;Lcom/google/firestore/v1/Document;)V

    .line 447
    return-object p0
.end method

.method public setDocument(Lcom/google/firestore/v1/Document;)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/Document;

    .line 431
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 432
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/DocumentChange;->access$100(Lcom/google/firestore/v1/DocumentChange;Lcom/google/firestore/v1/Document;)V

    .line 433
    return-object p0
.end method

.method public setRemovedTargetIds(II)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 622
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 623
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentChange;->access$800(Lcom/google/firestore/v1/DocumentChange;II)V

    .line 624
    return-object p0
.end method

.method public setTargetIds(II)Lcom/google/firestore/v1/DocumentChange$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 525
    invoke-virtual {p0}, Lcom/google/firestore/v1/DocumentChange$Builder;->copyOnWrite()V

    .line 526
    iget-object v0, p0, Lcom/google/firestore/v1/DocumentChange$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/DocumentChange;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/DocumentChange;->access$400(Lcom/google/firestore/v1/DocumentChange;II)V

    .line 527
    return-object p0
.end method
