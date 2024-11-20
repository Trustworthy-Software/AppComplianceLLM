.class public final enum Lcom/google/firebase/firestore/remote/Stream$State;
.super Ljava/lang/Enum;
.source "Stream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/remote/Stream$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Backoff:Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Error:Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Healthy:Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Initial:Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Open:Lcom/google/firebase/firestore/remote/Stream$State;

.field public static final enum Starting:Lcom/google/firebase/firestore/remote/Stream$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 103
    new-instance v0, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v1, "Initial"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->Initial:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 113
    new-instance v1, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v2, "Starting"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/remote/Stream$State;->Starting:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 119
    new-instance v2, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v3, "Open"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/firebase/firestore/remote/Stream$State;->Open:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 126
    new-instance v3, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v4, "Healthy"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/firebase/firestore/remote/Stream$State;->Healthy:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 132
    new-instance v4, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v5, "Error"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/firebase/firestore/remote/Stream$State;->Error:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 139
    new-instance v5, Lcom/google/firebase/firestore/remote/Stream$State;

    const-string v6, "Backoff"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/google/firebase/firestore/remote/Stream$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/firebase/firestore/remote/Stream$State;->Backoff:Lcom/google/firebase/firestore/remote/Stream$State;

    .line 97
    filled-new-array/range {v0 .. v5}, [Lcom/google/firebase/firestore/remote/Stream$State;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->$VALUES:[Lcom/google/firebase/firestore/remote/Stream$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/remote/Stream$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    const-class v0, Lcom/google/firebase/firestore/remote/Stream$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/remote/Stream$State;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/remote/Stream$State;
    .locals 1

    .line 97
    sget-object v0, Lcom/google/firebase/firestore/remote/Stream$State;->$VALUES:[Lcom/google/firebase/firestore/remote/Stream$State;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/remote/Stream$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/remote/Stream$State;

    return-object v0
.end method
