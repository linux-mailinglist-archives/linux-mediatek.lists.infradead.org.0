Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AE281320AF
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 08:49:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vNQPvE1nhyVXqrSo0Bbyc/TDOlXcX8t/JMRbdqgiL6I=; b=oNuXua/OO0EZvc
	EVQRFREZK59RhkwndgUX80GYgZLDT0jOijfsUK4bUpNu6XFX/OyeOvVzj/AF/6qL25MofiR6I1X2R
	gSV7y9lZ1oqdiphlCtDF/hJiToC1Dw+/rmBaFcRXxpYtyA2mGK3s/qybu554RrsnzH6HNl+IixrHB
	7FtJO+HwBgPXAQar5PdZus8f5Ry7xopGbtXiI4LoqHpYrlt6n2U/OZE3gyI6nspI2Q7Z2xOTJJfsH
	Pq6NtVYTMEfdSBxFsZ+wKOCTrKTxd+mdJV8c7Z31CZROzWOW/gvfE+kn8TqBWJsJtCrhiUzO9j2m7
	fu46hT6jJ75bif8NQeXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iojcO-0002wY-PO; Tue, 07 Jan 2020 07:49:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iojcL-0002vr-O0
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 07:49:35 +0000
X-UUID: 8959147760554add80edd702ebd6249e-20200106
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=G5gjdG4z3oIMuvOmLeNru5HNzB1wIMfOjrHqMxHNamg=; 
 b=pWch+AEGD/jfzObHKkGONrtsKAxG/TP3JQdOzWyw7N6G4V8wImM4Wp88zuFT7pB4uxrzLdCLT1QxSmOTpJNsXSXHyEOPUrpd+lDTkj8okWoWNSrPYtBzx4Bq5bG16h9fHty/U7+LV+P9Mldaf77/KtoMYT+2FIFmYxG4gp9mGxk=;
X-UUID: 8959147760554add80edd702ebd6249e-20200106
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yingjoe.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 414134432; Mon, 06 Jan 2020 23:49:28 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 6 Jan 2020 23:49:27 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 15:48:59 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 7 Jan 2020 15:49:07 +0800
Message-ID: <1578383365.12740.7.camel@mtksdaap41>
Subject: Re: [PATCH V2 1/2] Documentation: devicetree: bindings: input
From: Yingjoe Chen <yingjoe.chen@mediatek.com>
To: fengping yu <fengping.yu@mediatek.com>
Date: Tue, 7 Jan 2020 15:49:25 +0800
In-Reply-To: <20191227013722.12201-2-fengping.yu@mediatek.com>
References: <20191227013722.12201-1-fengping.yu@mediatek.com>
 <20191227013722.12201-2-fengping.yu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_234933_789923_27009F6D 
X-CRM114-Status: GOOD (  17.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


Hi, Fengping,

You missed several maintainers and mailing lists. Please
use ./scripts/get_maintainer.pl to find proper maintainers & lists.

Bad summary, You can use git log --oneline to find proper summary.
Maybe:
dt-bindings: input: keyboard: add MediaTek keypad controller binding

On Fri, 2019-12-27 at 09:37 +0800, fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> Add mtk keypad device tree documentation.
> 
> Change-Id: I415b76ee980784992763c768829b2dda76699dea

Please remove Change-Id

> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  .../devicetree/bindings/input/mtk-kpd.txt     | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/mtk-kpd.txt
> 
> diff --git a/Documentation/devicetree/bindings/input/mtk-kpd.txt b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> new file mode 100644
> index 000000000000..2af81e696159
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/mtk-kpd.txt
> @@ -0,0 +1,45 @@
> +* Mediatek's Keypad Controller device tree binding
> +
> +Mediatek's Keypad controller is used to interface a SoC with a matrix-type
> +keypad device. The keypad controller supports multiple row and column lines.
> +A key can be placed at each intersection of a unique row and a unique column.
> +The keypad controller can sense a key-press and key-release and report the
> +event using a interrupt to the cpu.
> +
> +Required properties:
> +- compatible should contain:
> +	* "mediatek,mt6779-keypad" for MT6779 keypad
> +	* "mediatek,kp" for common keypad
> +
> +- reg: The base address of the Keypad register bank.
> +
> +- interrupts: A single interrupt specifier.
> +
> +- mediatek,key-debounce-ms: Debounce interval in milliseconds, maximum value
> +  is 256ms
> +
> +- mediatek,hw-map-num: Number of entries of keycode in mediatek,hw-init-map
> +
> +- mediatek,hw-init-map: An array of packed 1-cell entries containing the
> +  equivalent of hw-map-num linux key-code. Each cell is Linux keymap of
> +  corresponding row/col, arrange like this:
> +
> +  row0col0, row0col1, row0col2,...row0col8,
> +  row1col0, row1col1, row1col2,...row1col8,
> +  ...
> +  row7col0, row7col1, row7col2,...row7col8.
> +
> +Example:
> +
> +	keypad: kp@10010000 {
> +		compatible = "mediatek,mt6779-keypad", "mediatek,kp";
> +		reg = <0 0x10010000 0 0x1000>;
> +		interrupts = <GIC_SPI 75 IRQ_TYPE_EDGE_FALLING>;
> +	};
> +
> +	&keypad {
> +		mediatek,key-debounce-ms = <1024>;

The maximum value is 256ms, why set it to 1024?


> +		/*HW Keycode [0~71] -> Linux Keycode*/
Don't need this line.

> +		mediatek,khw-map-num = <72>;

typo?

> +		mediatek,hw-init-map = <114 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 >;

I think it make sense to arrange it as 9*8 array to make it shorter in
lines and easier to find entries.

Joe.C

> +	};

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
