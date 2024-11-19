.class Lcom/caverock/androidsvg/CSSParser$Selector;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Selector"
.end annotation


# instance fields
.field simpleSelectors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            ">;"
        }
    .end annotation
.end field

.field specificity:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/caverock/androidsvg/CSSParser$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/caverock/androidsvg/CSSParser$1;

    .line 318
    invoke-direct {p0}, Lcom/caverock/androidsvg/CSSParser$Selector;-><init>()V

    return-void
.end method


# virtual methods
.method add(Lcom/caverock/androidsvg/CSSParser$SimpleSelector;)V
    .locals 1
    .param p1, "part"    # Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 325
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method addedAttributeOrPseudo()V
    .locals 1

    .line 355
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 356
    return-void
.end method

.method addedElement()V
    .locals 1

    .line 361
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 362
    return-void
.end method

.method addedIdAttribute()V
    .locals 2

    .line 349
    iget v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    const v1, 0xf4240

    add-int/2addr v0, v1

    iput v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    .line 350
    return-void
.end method

.method get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .locals 1
    .param p1, "i"    # I

    .line 337
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method size()I
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->simpleSelectors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    .line 369
    .local v2, "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 370
    .end local v2    # "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    :cond_0
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/caverock/androidsvg/CSSParser$Selector;->specificity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
