.class public final Lcom/google/firestore/v1/WriteResponse$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "WriteResponse.java"

# interfaces
.implements Lcom/google/firestore/v1/WriteResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/WriteResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/WriteResponse;",
        "Lcom/google/firestore/v1/WriteResponse$Builder;",
        ">;",
        "Lcom/google/firestore/v1/WriteResponseOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 461
    invoke-static {}, Lcom/google/firestore/v1/WriteResponse;->access$000()Lcom/google/firestore/v1/WriteResponse;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 462
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/WriteResponse$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/WriteResponse$1;

    .line 454
    invoke-direct {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllWriteResults(Ljava/lang/Iterable;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;)",
            "Lcom/google/firestore/v1/WriteResponse$Builder;"
        }
    .end annotation

    .line 726
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/firestore/v1/WriteResult;>;"
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 727
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$900(Lcom/google/firestore/v1/WriteResponse;Ljava/lang/Iterable;)V

    .line 728
    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 710
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 711
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    .line 712
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    .line 711
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteResponse;->access$800(Lcom/google/firestore/v1/WriteResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 713
    return-object p0
.end method

.method public addWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 680
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 681
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteResponse;->access$800(Lcom/google/firestore/v1/WriteResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 682
    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 695
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 696
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {p1}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/WriteResponse;->access$700(Lcom/google/firestore/v1/WriteResponse;Lcom/google/firestore/v1/WriteResult;)V

    .line 697
    return-object p0
.end method

.method public addWriteResults(Lcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 665
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 666
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$700(Lcom/google/firestore/v1/WriteResponse;Lcom/google/firestore/v1/WriteResult;)V

    .line 667
    return-object p0
.end method

.method public clearCommitTime()Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1

    .line 825
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 826
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResponse;->access$1400(Lcom/google/firestore/v1/WriteResponse;)V

    .line 827
    return-object p0
.end method

.method public clearStreamId()Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1

    .line 518
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 519
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResponse;->access$200(Lcom/google/firestore/v1/WriteResponse;)V

    .line 520
    return-object p0
.end method

.method public clearStreamToken()Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1

    .line 580
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 581
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResponse;->access$500(Lcom/google/firestore/v1/WriteResponse;)V

    .line 582
    return-object p0
.end method

.method public clearWriteResults()Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 741
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0}, Lcom/google/firestore/v1/WriteResponse;->access$1000(Lcom/google/firestore/v1/WriteResponse;)V

    .line 742
    return-object p0
.end method

.method public getCommitTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getCommitTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getStreamId()Ljava/lang/String;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getStreamId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStreamIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getStreamIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getStreamToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 551
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getStreamToken()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getWriteResults(I)Lcom/google/firestore/v1/WriteResult;
    .locals 1
    .param p1, "index"    # I

    .line 622
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->getWriteResults(I)Lcom/google/firestore/v1/WriteResult;

    move-result-object v0

    return-object v0
.end method

.method public getWriteResultsCount()I
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getWriteResultsCount()I

    move-result v0

    return v0
.end method

.method public getWriteResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firestore/v1/WriteResult;",
            ">;"
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    .line 597
    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->getWriteResultsList()Ljava/util/List;

    move-result-object v0

    .line 596
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasCommitTime()Z
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {v0}, Lcom/google/firestore/v1/WriteResponse;->hasCommitTime()Z

    move-result v0

    return v0
.end method

.method public mergeCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 814
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 815
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$1300(Lcom/google/firestore/v1/WriteResponse;Lcom/google/protobuf/Timestamp;)V

    .line 816
    return-object p0
.end method

.method public removeWriteResults(I)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "index"    # I

    .line 754
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 755
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$1100(Lcom/google/firestore/v1/WriteResponse;I)V

    .line 756
    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 802
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 803
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/WriteResponse;->access$1200(Lcom/google/firestore/v1/WriteResponse;Lcom/google/protobuf/Timestamp;)V

    .line 804
    return-object p0
.end method

.method public setCommitTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 789
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 790
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$1200(Lcom/google/firestore/v1/WriteResponse;Lcom/google/protobuf/Timestamp;)V

    .line 791
    return-object p0
.end method

.method public setStreamId(Ljava/lang/String;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 504
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 505
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$100(Lcom/google/firestore/v1/WriteResponse;Ljava/lang/String;)V

    .line 506
    return-object p0
.end method

.method public setStreamIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 534
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 535
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$300(Lcom/google/firestore/v1/WriteResponse;Lcom/google/protobuf/ByteString;)V

    .line 536
    return-object p0
.end method

.method public setStreamToken(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 565
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 566
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/WriteResponse;->access$400(Lcom/google/firestore/v1/WriteResponse;Lcom/google/protobuf/ByteString;)V

    .line 567
    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult$Builder;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/google/firestore/v1/WriteResult$Builder;

    .line 650
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 651
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    .line 652
    invoke-virtual {p2}, Lcom/google/firestore/v1/WriteResult$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/WriteResult;

    .line 651
    invoke-static {v0, p1, v1}, Lcom/google/firestore/v1/WriteResponse;->access$600(Lcom/google/firestore/v1/WriteResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 653
    return-object p0
.end method

.method public setWriteResults(ILcom/google/firestore/v1/WriteResult;)Lcom/google/firestore/v1/WriteResponse$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/google/firestore/v1/WriteResult;

    .line 635
    invoke-virtual {p0}, Lcom/google/firestore/v1/WriteResponse$Builder;->copyOnWrite()V

    .line 636
    iget-object v0, p0, Lcom/google/firestore/v1/WriteResponse$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/WriteResponse;

    invoke-static {v0, p1, p2}, Lcom/google/firestore/v1/WriteResponse;->access$600(Lcom/google/firestore/v1/WriteResponse;ILcom/google/firestore/v1/WriteResult;)V

    .line 637
    return-object p0
.end method
