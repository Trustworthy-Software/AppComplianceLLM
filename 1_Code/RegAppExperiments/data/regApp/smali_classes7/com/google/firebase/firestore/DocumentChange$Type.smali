.class public final enum Lcom/google/firebase/firestore/DocumentChange$Type;
.super Ljava/lang/Enum;
.source "DocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/DocumentChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/DocumentChange$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/DocumentChange$Type;

.field public static final enum ADDED:Lcom/google/firebase/firestore/DocumentChange$Type;

.field public static final enum MODIFIED:Lcom/google/firebase/firestore/DocumentChange$Type;

.field public static final enum REMOVED:Lcom/google/firebase/firestore/DocumentChange$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lcom/google/firebase/firestore/DocumentChange$Type;

    const-string v1, "ADDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/DocumentChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 43
    new-instance v1, Lcom/google/firebase/firestore/DocumentChange$Type;

    const-string v2, "MODIFIED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/DocumentChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/DocumentChange$Type;->MODIFIED:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 48
    new-instance v2, Lcom/google/firebase/firestore/DocumentChange$Type;

    const-string v3, "REMOVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/DocumentChange$Type;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/DocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 39
    filled-new-array {v0, v1, v2}, [Lcom/google/firebase/firestore/DocumentChange$Type;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->$VALUES:[Lcom/google/firebase/firestore/DocumentChange$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 39
    const-class v0, Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->$VALUES:[Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/DocumentChange$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0
.end method
