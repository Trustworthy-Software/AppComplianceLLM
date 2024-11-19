.class public final enum Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
.super Ljava/lang/Enum;
.source "DocumentViewChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/DocumentViewChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/DocumentViewChange$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

.field public static final enum REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const-string v1, "REMOVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->REMOVED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 27
    new-instance v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const-string v2, "ADDED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 28
    new-instance v2, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const-string v3, "MODIFIED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->MODIFIED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 29
    new-instance v3, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    const-string v4, "METADATA"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 25
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 25
    const-class v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .locals 1

    .line 25
    sget-object v0, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->$VALUES:[Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-object v0
.end method
