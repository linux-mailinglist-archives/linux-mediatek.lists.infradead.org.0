Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023F517099E
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 21:29:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QSMyr8ajeVASbXrL6vx63IN8gHWEXa5d10kgPPXSOFk=; b=JdkzTKYg4JAkOu
	5hEKrdBcpycmaDIuvTO2KQlaHAK6d38HkmPUUxphfRVDOM34HqQGnmCP4TXNZHL0Zx9I7kVHOV/vB
	8Ge4y1yPurrZ0hJtMGh+UlU80hnd91rNNny8Ix7VYUTwNIw00Bs9dEj/03L6DKpLdtjKnQwHMJgww
	TrdjmlAr/afRPLeoFUyH1eDMpQFEn/3AYqGAzoe/rFPHBQmQrUDWKUMQhqWv2TJGRM9momy+QlSsH
	q/QAMFcXt1VrFORsFd3gxnS2NBCz73CPiqF7bn4CbiemM691Lfx2/C5NhzTNhbYQ9rp2OHWQwMBAp
	IeAlPUWTSMofsmOI+aDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j73Ih-00025Z-OQ; Wed, 26 Feb 2020 20:28:59 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j73IV-0001yH-Vy; Wed, 26 Feb 2020 20:28:49 +0000
Received: by mail-ot1-f66.google.com with SMTP id 66so705522otd.9;
 Wed, 26 Feb 2020 12:28:47 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O/ZmfWy9/9XjBdv30P0G0kcHPh66hW3ql84KTaPPF/A=;
 b=esu7m4vmIl4OpmnI9PQObsvowqDEoudG8eGB/qjCsbGGGMgwQ0svU2OdKFmRgatZS0
 39GnzbHn23gZwEKqwGkINIBbY0003eQ7by5csrHhoqrXVW87Xo7Klc7vE3KDbVZ0+ikR
 Aq6qQrDjixfY+Dc8ezEMD3j73mj3X4U4gn8pT7/arDHIAhFhBbXkXb6MOfa9W475p5d6
 3ewXNq3Ko0u4I87MM51/Vw1AiyJggLxRg8R3yET/EJW+Bc3oU5puq0lcOpv50mUrwpcz
 G/2sRslxBGeqa5m/W5CFxJRFEwccgbGUdc+Rho1z8F39UGeb8G+WVSgXfqiaz5YBcyCp
 Ds4Q==
X-Gm-Message-State: APjAAAVpXZz8LPeka/RTmGP3rSJUuEluD5lMMjrRXvCAmiOM9RZJK26G
 X03b3HldkS12fnvj6bGNmw==
X-Google-Smtp-Source: APXvYqx+ekwwPkyIdV8FoaGq7rSPdBmF6vtqNYcfh4IlzHYSrpmvQXBFhWXQgJrWcFqq1sadnCd3OA==
X-Received: by 2002:a9d:74c4:: with SMTP id a4mr456108otl.119.1582748926618;
 Wed, 26 Feb 2020 12:28:46 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id e10sm507605otl.0.2020.02.26.12.28.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 12:28:45 -0800 (PST)
Received: (nullmailer pid 4643 invoked by uid 1000);
 Wed, 26 Feb 2020 20:28:44 -0000
Date: Wed, 26 Feb 2020 14:28:44 -0600
From: Rob Herring <robh@kernel.org>
To: Macpaul Lin <macpaul.lin@mediatek.com>
Subject: Re: [PATCH 2/5] dt-bindings: clock: mediatek: document clk bindings
 mipi0a for Mediatek MT6765 SoC
Message-ID: <20200226202844.GA18610@bogus>
References: <1582278742-1626-1-git-send-email-macpaul.lin@mediatek.com>
 <1582278742-1626-3-git-send-email-macpaul.lin@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582278742-1626-3-git-send-email-macpaul.lin@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_122848_028763_918D7D79 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Loda Chou <loda.chou@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Ryder Lee <Ryder.Lee@mediatek.com>,
 Weiyi Lu <weiyi.lu@mediatek.com>, Evan Green <evgreen@chromium.org>,
 Yong Wu <yong.wu@mediatek.com>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 mtk01761 <wendell.lin@mediatek.com>, Owen Chen <owen.chen@mediatek.com>,
 devicetree@vger.kernel.org, Joerg Roedel <jroedel@suse.de>,
 Marc Zyngier <marc.zyngier@arm.com>, Sean Wang <Sean.Wang@mediatek.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, CC Hwang <cc.hwang@mediatek.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 05:52:19PM +0800, Macpaul Lin wrote:
> This patch adds the binding documentation for mipi0a.
> 
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> ---
>  .../bindings/arm/mediatek/mediatek,mipi0a.txt | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt

Please use DT schema for new bindings. See 
Documentation/devicetree/writing-schema.rst.

> 
> diff --git a/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> new file mode 100644
> index 000000000000..8be5978f388d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/mediatek/mediatek,mipi0a.txt
> @@ -0,0 +1,28 @@
> +Mediatek mipi0a (mipi_rx_ana_csi0a) controller
> +============================
> +
> +The Mediatek mipi0a controller provides various clocks
> +to the system.
> +
> +Required Properties:
> +
> +- compatible: Should be one of:
> +	- "mediatek,mt6765-mipi0a", "syscon"
> +- #clock-cells: Must be 1
> +
> +The mipi0a controller uses the common clk binding from
> +Documentation/devicetree/bindings/clock/clock-bindings.txt
> +The available clocks are defined in dt-bindings/clock/mt*-clk.h.
> +
> +The mipi0a controller also uses the common power domain from
> +Documentation/devicetree/bindings/soc/mediatek/scpsys.txt
> +The available power doamins are defined in dt-bindings/power/mt*-power.h.
> +
> +Example:
> +
> +mipi0a: clock-controller@11c10000 {
> +	compatible = "mediatek,mt6765-mipi0a", "syscon";
> +	reg = <0 0x11c10000 0 0x1000>;

Not documented.

> +	power-domains = <&scpsys MT6765_POWER_DOMAIN_CAM>;

Not documented.

> +	#clock-cells = <1>;
> +};
> -- 
> 2.18.0

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
