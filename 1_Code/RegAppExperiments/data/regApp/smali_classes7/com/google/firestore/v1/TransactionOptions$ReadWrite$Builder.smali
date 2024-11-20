.class public final Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TransactionOptions.java"

# interfaces
.implements Lcom/google/firestore/v1/TransactionOptions$ReadWriteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/TransactionOptions$ReadWrite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWrite;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;",
        ">;",
        "Lcom/google/firestore/v1/TransactionOptions$ReadWriteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 183
    invoke-static {}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->access$000()Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/TransactionOptions$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/TransactionOptions$1;

    .line 176
    invoke-direct {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearRetryTransaction()Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->copyOnWrite()V

    .line 223
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->access$200(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;)V

    .line 224
    return-object p0
.end method

.method public getRetryTransaction()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-virtual {v0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->getRetryTransaction()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setRetryTransaction(Lcom/google/protobuf/ByteString;)Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/protobuf/ByteString;

    .line 209
    invoke-virtual {p0}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->copyOnWrite()V

    .line 210
    iget-object v0, p0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/TransactionOptions$ReadWrite;->access$100(Lcom/google/firestore/v1/TransactionOptions$ReadWrite;Lcom/google/protobuf/ByteString;)V

    .line 211
    return-object p0
.end method
