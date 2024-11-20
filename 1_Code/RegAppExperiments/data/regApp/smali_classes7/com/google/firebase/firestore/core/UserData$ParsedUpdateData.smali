.class public Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;
.super Ljava/lang/Object;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedUpdateData"
.end annotation


# instance fields
.field private final data:Lcom/google/firebase/firestore/model/ObjectValue;

.field private final fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

.field private final fieldTransforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Ljava/util/List;)V
    .locals 0
    .param p1, "data"    # Lcom/google/firebase/firestore/model/ObjectValue;
    .param p2, "fieldMask"    # Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/model/ObjectValue;",
            "Lcom/google/firebase/firestore/model/mutation/FieldMask;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p3, "fieldTransforms":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/model/mutation/FieldTransform;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 367
    iput-object p1, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->data:Lcom/google/firebase/firestore/model/ObjectValue;

    .line 368
    iput-object p2, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    .line 369
    iput-object p3, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldTransforms:Ljava/util/List;

    .line 370
    return-void
.end method


# virtual methods
.method public getData()Lcom/google/firebase/firestore/model/ObjectValue;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->data:Lcom/google/firebase/firestore/model/ObjectValue;

    return-object v0
.end method

.method public getFieldMask()Lcom/google/firebase/firestore/model/mutation/FieldMask;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    return-object v0
.end method

.method public getFieldTransforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/model/mutation/FieldTransform;",
            ">;"
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldTransforms:Ljava/util/List;

    return-object v0
.end method

.method public toMutation(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/mutation/Precondition;)Lcom/google/firebase/firestore/model/mutation/Mutation;
    .locals 7
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "precondition"    # Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 385
    new-instance v6, Lcom/google/firebase/firestore/model/mutation/PatchMutation;

    iget-object v2, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->data:Lcom/google/firebase/firestore/model/ObjectValue;

    iget-object v3, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldMask:Lcom/google/firebase/firestore/model/mutation/FieldMask;

    iget-object v5, p0, Lcom/google/firebase/firestore/core/UserData$ParsedUpdateData;->fieldTransforms:Ljava/util/List;

    move-object v0, v6

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/model/mutation/PatchMutation;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/ObjectValue;Lcom/google/firebase/firestore/model/mutation/FieldMask;Lcom/google/firebase/firestore/model/mutation/Precondition;Ljava/util/List;)V

    return-object v6
.end method
