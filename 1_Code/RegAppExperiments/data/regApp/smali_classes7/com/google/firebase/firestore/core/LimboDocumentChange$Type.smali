.class public final enum Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
.super Ljava/lang/Enum;
.source "LimboDocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/LimboDocumentChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

.field public static final enum ADDED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

.field public static final enum REMOVED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    new-instance v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    const-string v1, "ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    .line 24
    new-instance v1, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    const-string v2, "REMOVED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    .line 22
    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/LimboDocumentChange$Type;

    return-object v0
.end method
