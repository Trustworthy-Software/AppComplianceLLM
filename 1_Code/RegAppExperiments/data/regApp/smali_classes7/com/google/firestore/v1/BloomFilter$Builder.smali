.class public final Lcom/google/firestore/v1/BloomFilter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "BloomFilter.java"

# interfaces
.implements Lcom/google/firestore/v1/BloomFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/BloomFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/BloomFilter;",
        "Lcom/google/firestore/v1/BloomFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/BloomFilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 235
    invoke-static {}, Lcom/google/firestore/v1/BloomFilter;->access$000()Lcom/google/firestore/v1/BloomFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/BloomFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/BloomFilter$1;

    .line 228
    invoke-direct {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBits()Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 306
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/BloomFilter;->access$300(Lcom/google/firestore/v1/BloomFilter;)V

    .line 307
    return-object p0
.end method

.method public clearHashCount()Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1

    .line 345
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 346
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/BloomFilter;->access$500(Lcom/google/firestore/v1/BloomFilter;)V

    .line 347
    return-object p0
.end method

.method public getBits()Lcom/google/firestore/v1/BitSequence;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getBits()Lcom/google/firestore/v1/BitSequence;

    move-result-object v0

    return-object v0
.end method

.method public getHashCount()I
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->getHashCount()I

    move-result v0

    return v0
.end method

.method public hasBits()Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/BloomFilter;->hasBits()Z

    move-result v0

    return v0
.end method

.method public mergeBits(Lcom/google/firestore/v1/BitSequence;)Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BitSequence;

    .line 294
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 295
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BloomFilter;->access$200(Lcom/google/firestore/v1/BloomFilter;Lcom/google/firestore/v1/BitSequence;)V

    .line 296
    return-object p0
.end method

.method public setBits(Lcom/google/firestore/v1/BitSequence$Builder;)Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/BitSequence$Builder;

    .line 282
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 283
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/BitSequence$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/BitSequence;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/BloomFilter;->access$100(Lcom/google/firestore/v1/BloomFilter;Lcom/google/firestore/v1/BitSequence;)V

    .line 284
    return-object p0
.end method

.method public setBits(Lcom/google/firestore/v1/BitSequence;)Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/BitSequence;

    .line 269
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 270
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BloomFilter;->access$100(Lcom/google/firestore/v1/BloomFilter;Lcom/google/firestore/v1/BitSequence;)V

    .line 271
    return-object p0
.end method

.method public setHashCount(I)Lcom/google/firestore/v1/BloomFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 332
    invoke-virtual {p0}, Lcom/google/firestore/v1/BloomFilter$Builder;->copyOnWrite()V

    .line 333
    iget-object v0, p0, Lcom/google/firestore/v1/BloomFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/BloomFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/BloomFilter;->access$400(Lcom/google/firestore/v1/BloomFilter;I)V

    .line 334
    return-object p0
.end method
