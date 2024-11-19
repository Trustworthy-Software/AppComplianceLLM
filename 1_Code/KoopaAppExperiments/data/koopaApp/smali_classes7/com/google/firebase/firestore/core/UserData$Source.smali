.class public final enum Lcom/google/firebase/firestore/core/UserData$Source;
.super Ljava/lang/Enum;
.source "UserData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/UserData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Source"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/UserData$Source;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/UserData$Source;

.field public static final enum Argument:Lcom/google/firebase/firestore/core/UserData$Source;

.field public static final enum ArrayArgument:Lcom/google/firebase/firestore/core/UserData$Source;

.field public static final enum MergeSet:Lcom/google/firebase/firestore/core/UserData$Source;

.field public static final enum Set:Lcom/google/firebase/firestore/core/UserData$Source;

.field public static final enum Update:Lcom/google/firebase/firestore/core/UserData$Source;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 45
    new-instance v0, Lcom/google/firebase/firestore/core/UserData$Source;

    const-string v1, "Set"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/core/UserData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/core/UserData$Source;->Set:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 47
    new-instance v1, Lcom/google/firebase/firestore/core/UserData$Source;

    const-string v2, "MergeSet"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/core/UserData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/core/UserData$Source;->MergeSet:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 49
    new-instance v2, Lcom/google/firebase/firestore/core/UserData$Source;

    const-string v3, "Update"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/core/UserData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/core/UserData$Source;->Update:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 54
    new-instance v3, Lcom/google/firebase/firestore/core/UserData$Source;

    const-string v4, "Argument"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/core/UserData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/firestore/core/UserData$Source;->Argument:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 59
    new-instance v4, Lcom/google/firebase/firestore/core/UserData$Source;

    const-string v5, "ArrayArgument"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/core/UserData$Source;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/firestore/core/UserData$Source;->ArrayArgument:Lcom/google/firebase/firestore/core/UserData$Source;

    .line 43
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/firebase/firestore/core/UserData$Source;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/core/UserData$Source;->$VALUES:[Lcom/google/firebase/firestore/core/UserData$Source;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/UserData$Source;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 43
    const-class v0, Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/UserData$Source;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/UserData$Source;
    .locals 1

    .line 43
    sget-object v0, Lcom/google/firebase/firestore/core/UserData$Source;->$VALUES:[Lcom/google/firebase/firestore/core/UserData$Source;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/UserData$Source;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/UserData$Source;

    return-object v0
.end method
