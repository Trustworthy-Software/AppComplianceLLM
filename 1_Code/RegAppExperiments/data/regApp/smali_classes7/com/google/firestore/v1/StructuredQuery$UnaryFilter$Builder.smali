.class public final Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;",
        ">;",
        "Lcom/google/firestore/v1/StructuredQuery$UnaryFilterOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3617
    invoke-static {}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4100()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 3618
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firestore/v1/StructuredQuery$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/firestore/v1/StructuredQuery$1;

    .line 3610
    invoke-direct {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearField()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3766
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3767
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4800(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 3768
    return-object p0
.end method

.method public clearOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3694
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3695
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4500(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 3696
    return-object p0
.end method

.method public clearOperandType()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1

    .line 3627
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3628
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4200(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;)V

    .line 3629
    return-object p0
.end method

.method public getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;
    .locals 1

    .line 3719
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getField()Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    move-result-object v0

    return-object v0
.end method

.method public getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;
    .locals 1

    .line 3669
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getOp()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    move-result-object v0

    return-object v0
.end method

.method public getOpValue()I
    .locals 1

    .line 3643
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getOpValue()I

    move-result v0

    return v0
.end method

.method public getOperandTypeCase()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;
    .locals 1

    .line 3623
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->getOperandTypeCase()Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$OperandTypeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasField()Z
    .locals 1

    .line 3708
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {v0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->hasField()Z

    move-result v0

    return v0
.end method

.method public mergeField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 3754
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3755
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4700(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3756
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;

    .line 3742
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3743
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-virtual {p1}, Lcom/google/firestore/v1/StructuredQuery$FieldReference$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    invoke-static {v0, v1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4600(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3744
    return-object p0
.end method

.method public setField(Lcom/google/firestore/v1/StructuredQuery$FieldReference;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$FieldReference;

    .line 3729
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3730
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4600(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$FieldReference;)V

    .line 3731
    return-object p0
.end method

.method public setOp(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1
    .param p1, "value"    # Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;

    .line 3681
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3682
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4400(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Operator;)V

    .line 3683
    return-object p0
.end method

.method public setOpValue(I)Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;
    .locals 1
    .param p1, "value"    # I

    .line 3655
    invoke-virtual {p0}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->copyOnWrite()V

    .line 3656
    iget-object v0, p0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;

    invoke-static {v0, p1}, Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;->access$4300(Lcom/google/firestore/v1/StructuredQuery$UnaryFilter;I)V

    .line 3657
    return-object p0
.end method
