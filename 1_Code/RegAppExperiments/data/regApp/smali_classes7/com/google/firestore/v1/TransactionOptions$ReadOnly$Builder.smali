.class public final Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptions$ReadOnlyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions$ReadOnly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnly;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadOnlyOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 553
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$400()Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 554
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/TransactionOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/TransactionOptions$1;

    .line 546
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearConsistencySelector()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->copyOnWrite()V

    .line 564
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$500(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    .line 565
    return-object p0
.end method

.method public clearReadTime()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1

    .line 642
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->copyOnWrite()V

    .line 643
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$800(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;)V

    .line 644
    return-object p0
.end method

.method public getConsistencySelectorCase()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->getConsistencySelectorCase()Lcom/google/firestore/v1/TransactionOptions$ReadOnly$ConsistencySelectorCase;

    move-result-object v0

    return-object v0
.end method

.method public getReadTime()Lcom/google/protobuf/Timestamp;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->getReadTime()Lcom/google/protobuf/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public hasReadTime()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->hasReadTime()Z

    move-result v0

    return v0
.end method

.method public mergeReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 629
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->copyOnWrite()V

    .line 630
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$700(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;Lcom/google/protobuf/Timestamp;)V

    .line 631
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp$Builder;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/protobuf/Timestamp$Builder;

    .line 616
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->copyOnWrite()V

    .line 617
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-virtual {p1}, Lcom/google/protobuf/Timestamp$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Timestamp;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$600(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;Lcom/google/protobuf/Timestamp;)V

    .line 618
    return-object p0
.end method

.method public setReadTime(Lcom/google/protobuf/Timestamp;)Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/Timestamp;

    .line 602
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->copyOnWrite()V

    .line 603
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadOnly;->access$600(Lcom/google/firestore/v1/TransactionOptions$ReadOnly;Lcom/google/protobuf/Timestamp;)V

    .line 604
    return-object p0
.end method
