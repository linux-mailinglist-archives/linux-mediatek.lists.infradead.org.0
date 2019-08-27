Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CEFB9F0C5
	for <lists+linux-mediatek@lfdr.de>; Tue, 27 Aug 2019 18:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SOQd/1nhxyIXr5N9WuDCwXS0rh1lqXS8d9wWFilCT1E=; b=FjsZ7kXFGb/bvO
	BQthAZEKJd6JAfdF+3G1409jr104sS1CwtU4LBLkzMNf+gHANux06sbEDDGjrCbgFYuMu6vR1s6Wm
	e+Az19I4xctp1/DuiDpZ4akc6hoKqBHV4dDvtpMT7RvOouZ/bKgnnZoGoWqUhMOdNKxsGk55blkQV
	sBmZwTvhITgoc3yzCbDxGC7aRc8cFEjwlxT3UHJv14XGgYg/d4+57cY6Ilhk6qeP5j6gLvSuWF3ZX
	ZJ1H3aXh3+2hoxsCqCJTUmZXknJiRyMnnYIeXoUiUSBL85C2pL/RzPtsUAWO/irWrAQzSoWObfUGH
	+C/ZpTyjPJgold+JTa0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ehy-0004QO-Kg; Tue, 27 Aug 2019 16:52:38 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2ehv-0004Pp-1G
 for linux-mediatek@lists.infradead.org; Tue, 27 Aug 2019 16:52:36 +0000
Received: by mail-ot1-f67.google.com with SMTP id k18so19353963otr.3
 for <linux-mediatek@lists.infradead.org>; Tue, 27 Aug 2019 09:52:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tJQaEfQzxJRI95haC9x8BQf6ZaZH5SadaGLixg3pTkQ=;
 b=tQBaaIDCYyAAlL+UsV0ZbkemWiTCG5OstxuuM6fmLSRnr52Hw/BUen9QXf+vYlXKdu
 sw/9AWMLGZFbKmDGxROl25EtWet4WUUuy8nbJzg8o+GNbSNqPb4A1OrDiHL+UL4j6/ud
 NqmoYn8awToO9V501gnfmNEt6GSsmvOzWsd2ydHdYg5+unmMB2uPVW0/95O+QjcvfSuN
 5r6Ac0al9cmVvzU2TTMedHcEu2GDo8bOhuBqXP4HLZIQMJAYRnaXfdUezHmJZuAN7mfH
 gmuqRpyRXiFlbNW7JpcnMvD40qKD08WcoNTt13ob6m+BueyOnYORMLgMhMk22koTgiGE
 EVQQ==
X-Gm-Message-State: APjAAAWVYF/cyfrUFNr47YHyk7/7d4NfMdN3MUqk6IA+VBIVGK1umpxD
 cuhl/RbzCK1u8FBTpdqGuw==
X-Google-Smtp-Source: APXvYqyGilh1hnFSb4yL7j69xPv3YKAFNDENe5C8fgprVeR9noOD6uBNAfoQufznTGF82er1HpBS6Q==
X-Received: by 2002:a9d:65ca:: with SMTP id z10mr19808758oth.167.1566924754327; 
 Tue, 27 Aug 2019 09:52:34 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id s22sm4240569oij.37.2019.08.27.09.52.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 27 Aug 2019 09:52:33 -0700 (PDT)
Date: Tue, 27 Aug 2019 11:52:32 -0500
From: Rob Herring <robh@kernel.org>
To: Mars Cheng <mars.cheng@mediatek.com>
Subject: Re: [PATCH v2 08/11] dt-bindings: mediatek: bindings for MT6779 clk
Message-ID: <20190827165232.GA28828@bogus>
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-9-git-send-email-mars.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566206502-4347-9-git-send-email-mars.cheng@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_095235_081148_EECDCDF0 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Linus Walleij <linus.walleij@linaro.org>,
 Loda Chou <loda.chou@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019 17:21:39 +0800, Mars Cheng wrote:
> From: mtk01761 <wendell.lin@mediatek.com>
> 
> This patch adds the binding documentation for
> apmixedsys, audiosys, camsys, imgsys, ipesys,
> infracfg, mfgcfg, mmsys, topckgen, vdecsys,
> and vencsys for Mediatek MT6779.
> 
> Signed-off-by: mtk01761 <wendell.lin@mediatek.com>
> ---
>  .../bindings/arm/mediatek/mediatek,apmixedsys.txt  |    1 +
>  .../bindings/arm/mediatek/mediatek,audsys.txt      |    1 +
>  .../bindings/arm/mediatek/mediatek,camsys.txt      |    1 +
>  .../bindings/arm/mediatek/mediatek,imgsys.txt      |    1 +
>  .../bindings/arm/mediatek/mediatek,infracfg.txt    |    1 +
>  .../bindings/arm/mediatek/mediatek,ipesys.txt      |   22 ++++++++++++++++++++
>  .../bindings/arm/mediatek/mediatek,mfgcfg.txt      |    1 +
>  .../bindings/arm/mediatek/mediatek,mmsys.txt       |    1 +
>  .../bindings/arm/mediatek/mediatek,topckgen.txt    |    1 +
>  .../bindings/arm/mediatek/mediatek,vdecsys.txt     |    1 +
>  .../bindings/arm/mediatek/mediatek,vencsys.txt     |    1 +
>  11 files changed, 32 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
