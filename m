Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DEA1323EF
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 11:41:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wDsJPxuEcz/WROt5yp+tHeknCHo8NB+C8NI+Qpayabs=; b=Kyou/ZW25v2NNQ
	smkAtv0JY7YY1SwYam5H/cYEr0wQFi3HTKAnoG95X8tqG+nff/7pJWo6UncE7YqVS+J1SxRxTUJGi
	TXGzbWsncWIKcrYzb6hjdPnHx/ULk9IVAV4nvSj+691OleyWBJVPhae0l0jul7pIuFSulHbKwmI+j
	9TWB6G0eXfAtp9STank+TeVudFgcAPilyqM9kic35Vzl1oLqt0XaGmbfe3bQzt33l5afsTlj689Fm
	Hsl4s1FWPX4lKzMddelh99mbuj9GdqlicVxgzcTOTdxRJ0slOIQTwycwCfEGZVsMCM6eoB3RyRs0z
	x4wlpaa/NLkkGB7ykeNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomIS-00007c-Bw; Tue, 07 Jan 2020 10:41:12 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomIP-00007E-Bm
 for linux-mediatek@lists.infradead.org; Tue, 07 Jan 2020 10:41:10 +0000
Received: by mail-lj1-x243.google.com with SMTP id h23so54208364ljc.8
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 02:41:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UBtiNBdMZvnrnfPGqTIDF0mKwmvB3WgjS2DJzVGXsWA=;
 b=S8e5zkbAC4vGQyN2oQss8+zjnBiH2/1Oxd7//7o3rqWykwynawOBgCdO/acAzcuB5s
 mODoPHD8qcw1L3hjquQCkC0OrsKrcB77niLT521ZG6XitmsVfXMynWJ0GV5sUyh27+6c
 F5sa19WSHj3ogwD0IBzDD5qOUnOnWfXQhXVbCRpjMxcv40IymAx9IzzcIdDW78P3BMOI
 F6NvHOluAoPtlerKGz/DgXzJFBDujqnWB7hghFmAiTw91WKVMfFytwqCY4iPZ7wFzFsa
 INUIQKDoVJaPbk4IKdzkl3uWNrGDY013KPqlTmEjB5IbTXAtPRNjwCgsI97dA8rZ8Mmx
 4vcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UBtiNBdMZvnrnfPGqTIDF0mKwmvB3WgjS2DJzVGXsWA=;
 b=GiYemgiu0HXN+CCk1PxmMVle+tDBlZxJxB7eYBx6Xjy4F6WVTLSfNbzec574ovPp2t
 d1C5QNe7B3fsEuc7JQeZI4QO4XQlBBGWF/7108CTgZyYFyOCl/qSiQuKRdsMLGVkfgXf
 P+3YYKLGCY+a/OhFkhU/1A7448okOXc9SN+aTLxRq/jB7hh+g0dokR+D+a1OLw3AE6Qy
 Hx7bWjLDQFgEHQCRwzVtK3KMvWf2xnRfBs4A/S2xeIV8rhyjyZSz+ZVv26kiSbRW0jlV
 sGDO1SBDTPpWdrcENhFcd3DapQRI+LPV8xxPw9IUFAv9+ryq/GOLiur2UVO0YLVGwgrv
 aDkA==
X-Gm-Message-State: APjAAAUMjkrzZGdmqz+xcflbWCMi1telFOrGCzneb0pXso/K3tbfc8sG
 WEWQDOrfQIByxFG/kW3yjs42hHomrRKgIlP1I68pfg==
X-Google-Smtp-Source: APXvYqzPw/Qdx+sCdiOeNl65OnuQtCOolmEVElFYMMkBD7EgYjlKsv9P3YvfyZW4sD2cny18hKjAeDvhBrKHQUlYRoE=
X-Received: by 2002:a2e:a0cd:: with SMTP id f13mr25961364ljm.251.1578393667915; 
 Tue, 07 Jan 2020 02:41:07 -0800 (PST)
MIME-Version: 1.0
References: <1577799707-11855-1-git-send-email-light.hsieh@mediatek.com>
 <1577799707-11855-5-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1577799707-11855-5-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 7 Jan 2020 11:40:57 +0100
Message-ID: <CACRpkdbto2goahTjzozi_LXXo1QNUTV1wm_rwoFOTcb36w0jkw@mail.gmail.com>
Subject: Re: [PATCH v7 5/6] Backward compatible to previous Mediatek's
 bias-pull usage
To: Light Hsieh <light.hsieh@mediatek.com>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_024109_441588_A7A81A2B 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 kuohong.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Dec 31, 2019 at 2:41 PM Light Hsieh <light.hsieh@mediatek.com> wrote:

> Refine mtk_pinconf_set()/mtk_pinconf_get() for backward compatibility to
> previous MediaTek's bias-pull usage.
> In PINCTRL_MTK that use pinctrl-mtk-common.c, bias-pull setting for pins
> with 2 pull resistors can be specified as value for bias-pull-up and
> bias-pull-down. For example:
>     bias-pull-up = <MTK_PUPD_SET_R1R0_00>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_01>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_10>;
>     bias-pull-up = <MTK_PUPD_SET_R1R0_11>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_00>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_01>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_10>;
>     bias-pull-down = <MTK_PUPD_SET_R1R0_11>;
>
> On the other hand, PINCTRL_MTK_PARIS use customized properties
> "mediatek,pull-up-adv" and "mediatek,pull-down-adv" to specify bias-pull
> setting for pins with 2 pull resistors.
> This introduce in-compatibility in device tree and increase porting
> effort to MediaTek's customer that had already used PINCTRL_MTK version.
> Besides, if customers are not aware of this change and still write devicetree
> for PINCTRL_MTK version, they may encounter runtime failure with pinctrl and
> spent time to debug.
>
> This patch adds backward compatible to previous MediaTek's bias-pull usage
> so that Mediatek's customer need not use a new devicetree property name.
> The rationale is that: changing driver implementation had better leave
> interface unchanged.

Are these devicetree bindings upstream, or are these bindings never
submitted for inclusion in the official device tree bindings?

I don't really want to encourage out-of-tree non-canonical device
tree experiments.

On the other hand I want running code.

I suppose if there is a solid use case for backwards compatibility
that also affect independent developers (such as people just
hacking around with these devices) then we could add it.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
