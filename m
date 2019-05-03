Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81B73130F8
	for <lists+linux-mediatek@lfdr.de>; Fri,  3 May 2019 17:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qxQ9pmQsI9kl/sQEvh1WXVYMX1lyfphj+bIDkFr5w4Q=; b=cKTNth1lKrxDxx
	Zil1ba+7LZy3bTMJ0OMiKAmtIuAAUiEPkwD1oznuf2utZybzzO9CCdQiUQt5kRRrvnI7Czk8QnjUG
	vMisxPJEZqHL1NhW6aPsi46Y2pRlggvZ4aNQwV+EZpC0fHdebmpH28Qz28+pWtCZJNjtCLMkc1Tri
	BPC8SvNrTeosZjldqUAyGC2BTqgsaiZdHwQ+Sa+zYmuYALCdm0lvpm/oHrQQkFfhHb8XmRr2nxD0T
	M4/gwEvRdajR61LsPSB80OXPEeKkhjmE2WwGIPfMi+/RzWkpBSwEjyOM08O8s5Dl6f1JPy+XuDUvL
	o1Znrpi7KtuGBTMgoNBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZrm-0003gI-UM; Fri, 03 May 2019 15:12:50 +0000
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZri-0003fs-TS
 for linux-mediatek@lists.infradead.org; Fri, 03 May 2019 15:12:49 +0000
Received: by mail-it1-x142.google.com with SMTP id a190so9640042ite.4
 for <linux-mediatek@lists.infradead.org>; Fri, 03 May 2019 08:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=h0gqP9UfAhrcVQ0B7jx45OW9tzcGMjRGZERkH/amQd8=;
 b=fc39lvNrtLQ+PPYtosoIsxvEQNSCEyLIoC+tTlsPyHSyB86C/K2Ksa2rV2eZSMGM6e
 8kWCQ8JFZdBwoDoLSdnbcM7+rOSwHi+7dCOOWVM01wEl2NceqOGu3KrH1YoREi7GDUl2
 Hs6YesgZxH8N1Qx3JSRTYZrdwVBWxYTOIE08vZAZ0oSQnxRTTAhbZjIwk7xkxMXTKK/N
 /l1nnVGX7L0dWh2Sq29F2WDwdvQWJId7/BMmu69ruuNp9wRHrIP523awi2Ppcz9k4WIU
 Az6uS9ExDKAlCoJ4pM0oPjzBJ4w5KN97FZyN2GUl1ykw+DPgsJJayFbSqWSqizMpmfmt
 K3jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=h0gqP9UfAhrcVQ0B7jx45OW9tzcGMjRGZERkH/amQd8=;
 b=V9DkWxTaMWcSWQrwEXNiqU8OToafqzn8vbGhsrAIUYnINjE7g43RiBxRS3BBtQSkd5
 bNNenmN6R47WaYA8ElCOww+NRvbBgpY01uuDnSCsEr6JsVqtipJlqr0Pyug5B+sw0EOd
 lhLerc0HxEMWgikkGF7qfXgDRy582DJQTNfRbnr9ArVLdAv7Flgyw4K6qu/HTzDrcUn5
 OP1ASuMhE1nJA3b+pp1RT3pFaa95Nqca2e8RMV0X2UIBecY1/ystDH8zJSnAw0igceh9
 6UzBfcFyJ8i4XPtR4PbOZ3oCBa7krECzF1U1GYdzGvDIjXZ6FIaz4k/2ukpeNlMDcVvU
 zWlg==
X-Gm-Message-State: APjAAAXCp6hYcLopzL8FstWjChD2hiJ+B6F/zDHzENs1scNNWEDsFTbH
 QpegYW6a0spTIXFaX4GzXmVBgSsj1xtpmQa4Pv7emQ==
X-Google-Smtp-Source: APXvYqylRqk8vy/C0ENyupfDoZQ0z4e1EDdlHqQ1vxzioimJlizkmjvHen1pYQGiwpvSjAY735JShzGgeVvSLnohe6E=
X-Received: by 2002:a02:4482:: with SMTP id o124mr7550142jaa.121.1556896365345; 
 Fri, 03 May 2019 08:12:45 -0700 (PDT)
MIME-Version: 1.0
References: <20190323211612.860-1-fparent@baylibre.com>
 <20190323211612.860-9-fparent@baylibre.com>
 <CAPDyKFrAxmBv+1i3qJpD=M1Wq33U2PMfQv_99xDm9MLhLxSWYg@mail.gmail.com>
In-Reply-To: <CAPDyKFrAxmBv+1i3qJpD=M1Wq33U2PMfQv_99xDm9MLhLxSWYg@mail.gmail.com>
From: Fabien Parent <fparent@baylibre.com>
Date: Fri, 3 May 2019 17:12:34 +0200
Message-ID: <CAOwMV_z8RrmoK+bfEqgwOv97uJarnuTCUo7aczZz=gyvg8CDzQ@mail.gmail.com>
Subject: Re: [PATCH 08/24] dt-bindings: mmc: mtk-sd: add mtk-sd support for
 MT8516
To: Ulf Hansson <ulf.hansson@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_081247_098298_FCB61B11 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Chaotian Jing <chaotian.jing@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Ulf,

On Mon, Mar 25, 2019 at 2:27 PM Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> - trimmed cc list
>
> On Sat, 23 Mar 2019 at 22:17, Fabien Parent <fparent@baylibre.com> wrote:
> >
> > Add binding documentation of mtk-sd for MT8516 SoCs.
> >
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
>
> Applied for next, thanks!

I think this patch got lost since I cannot see it in your tree.

Thanks,
Fabien

>
> Kind regards
> Uffe
>
>
> > ---
> >  Documentation/devicetree/bindings/mmc/mtk-sd.txt | 1 +
> >  1 file changed, 1 insertion(+)
> >
> > diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.txt b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> > index f5bcda3980cc..91a2ec59e497 100644
> > --- a/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> > +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.txt
> > @@ -11,6 +11,7 @@ Required properties:
> >         "mediatek,mt8135-mmc": for mmc host ip compatible with mt8135
> >         "mediatek,mt8173-mmc": for mmc host ip compatible with mt8173
> >         "mediatek,mt8183-mmc": for mmc host ip compatible with mt8183
> > +       "mediatek,mt8516-mmc": for mmc host ip compatible with mt8516
> >         "mediatek,mt2701-mmc": for mmc host ip compatible with mt2701
> >         "mediatek,mt2712-mmc": for mmc host ip compatible with mt2712
> >         "mediatek,mt7622-mmc": for MT7622 SoC
> > --
> > 2.20.1
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
