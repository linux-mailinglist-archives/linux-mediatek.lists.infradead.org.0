Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BFF01ABB82
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 10:42:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2PsmcNKFHlAZbncrS4Oqe+tIkM8jGC9SOp5v3o5QOs=; b=ajXfLqAWCiSpth
	GsSYd/NkwzEqlM4m0s/2vr02TzUIF29g7GKmOgxVR/ErElnZ3pdbjoLtY5Q2mqo9snHSXh0e3JKrU
	/c/NFcD8TQcEZE6sF31SVWsLalj8Ho5BLJHHKEPGRGr3dUTMsvL3M65bBTrxijdJTGPq0DEW+NQ2T
	lV3ipacrhmuvIO8VsTU9estzhNS0lvkVK6Ghp4lXgyVZfBngcYw0Elo63Xyc6UrQqRup9Yuy4jFg5
	u+X9KOp/h/9HOXs4cLHGQyC3vzMSrqiKngiDQJy9fFdyE4QDBmJt9w0/OXAcHZ+B0LvjNINGDvsSq
	r8fzycvvAibviQpJXuyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP06E-00039k-Cl; Thu, 16 Apr 2020 08:42:18 +0000
Received: from lb2-smtp-cloud8.xs4all.net ([194.109.24.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP060-0002yI-QE; Thu, 16 Apr 2020 08:42:07 +0000
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
 by smtp-cloud8.xs4all.net with ESMTPA
 id P05fjxrLMlKa1P05ijR4UE; Thu, 16 Apr 2020 10:41:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
 t=1587026514; bh=nDiiDq5VxoANMFzKvaHDm5u5hBfjVUKYxuJ4Vl53I9E=;
 h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
 Subject;
 b=DVK1/Z0UttgiZCFRsZ3bMTL/5GO0v6WyWPweVBM3xhNdgn7WUS+HvaQJIyfNoxg9U
 nNMA8ToP6CIp+RnJG6vuaXWnYGzu+4NZuC049wgxmMcFTJ6H61SiS+GOG8hNSfOkx6
 xmSi8LHOxShK0bj4hZPSQ1po5fP+AQxsladHKTrI4EkQEQdwY8BKsCTvQaspqDQn91
 CoRtJJ1qmc9pgfQ+ptbFkflqY+rTeiV+nwm0DXh/aOR4p+0N2vR6d8QOuaM9Sh0Trb
 g/4WO/y+nAfVLi5pNRzWWnVqQJAVIgbAOqLLJqQHnsqz4mSQqpmaw2aV22auz3T9GZ
 JFfiyYkQ2rJmw==
Subject: Re: [PATCH 1/2] arm64: dts: mt8173: fix mdp aliases property name
To: Hsin-Yi Wang <hsinyi@chromium.org>, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org
References: <20200414030815.192104-1-hsinyi@chromium.org>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <4e335bc7-a45d-4688-a578-1e9793a61229@xs4all.nl>
Date: Thu, 16 Apr 2020 10:41:43 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200414030815.192104-1-hsinyi@chromium.org>
Content-Language: en-US
X-CMAE-Envelope: MS4wfMRXhIiwag2O6pLuQ2S1/m/UzBg8JrrSZagIUAA4xYEUDBHly1PbuCwb4LDhizYpEfFs3dPdy9Dod0YG8uUWitCPx80aF9uzvLyby9dTr2yyBl9eApiU
 knu5VuVPUdx0VdZXYeZxUbWth/4x8GzHPCpbEJzaPjFfu5skGd+DYtgTCFmZ4f81p3BoDxc8zZyVUA0liIVCkfyRRoOutPpY2JRTvGu9ZSDr5KFwI+Ipp+qK
 nn+itAIR5S/QaxpBjCv/Lh7OS7WDBzxQXCVv+lt/cfWaSXCk2W1VOEVdAIpUKW5cWCNH/QtxgFDsJvJEovCcrr0pnVR5gXahpCWXmXXMJXhD0N7BbIarJB/v
 JcZ8XNAaMvoddbwLF601Bh41gLzgoKdUBBPdu/25m4Ytk/Y0wRakVq4TAfLixO/jJP3g1d5xP9QU7xFs4FE3W0sbvReAP0RLIILVohO6j0oTJSeqLsN3t0IY
 HpBdwLonp7Vg7QIIxigMTh7YxYrvcWTU+KcgXWwRlh/EPv3dfBclZ/rX3x366N5BG2PUEP5mog2ms28P2nkpY2uueEIzsAFCNhA+tdcLbpmt/vqVNusF/xkk
 wu/db57jEKXRh48AoAgObV4V
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_014205_654463_7CD5DA10 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [194.109.24.25 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 14/04/2020 05:08, Hsin-Yi Wang wrote:
> Fix warning:
> Warning (alias_paths): /aliases: aliases property name must include only lowercase and '-'
> 
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)

I'll merge patch 2/2 for 5.8. I assume that this dtsi patch is merged through
a mediatek subsystem?

Regards,

	Hans

> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt8173.dtsi b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> index a212bf124e81..d1e9c41004b4 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8173.dtsi
> @@ -42,14 +42,14 @@ aliases {
>  		dpi0 = &dpi0;
>  		dsi0 = &dsi0;
>  		dsi1 = &dsi1;
> -		mdp_rdma0 = &mdp_rdma0;
> -		mdp_rdma1 = &mdp_rdma1;
> -		mdp_rsz0 = &mdp_rsz0;
> -		mdp_rsz1 = &mdp_rsz1;
> -		mdp_rsz2 = &mdp_rsz2;
> -		mdp_wdma0 = &mdp_wdma0;
> -		mdp_wrot0 = &mdp_wrot0;
> -		mdp_wrot1 = &mdp_wrot1;
> +		mdp-rdma0 = &mdp_rdma0;
> +		mdp-rdma1 = &mdp_rdma1;
> +		mdp-rsz0 = &mdp_rsz0;
> +		mdp-rsz1 = &mdp_rsz1;
> +		mdp-rsz2 = &mdp_rsz2;
> +		mdp-wdma0 = &mdp_wdma0;
> +		mdp-wrot0 = &mdp_wrot0;
> +		mdp-wrot1 = &mdp_wrot1;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
