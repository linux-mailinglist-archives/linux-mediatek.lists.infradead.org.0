Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6C2C1AF5F4
	for <lists+linux-mediatek@lfdr.de>; Sun, 19 Apr 2020 02:05:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jGi+HZObNcgJLEc01HW69K2UheBRcayJTY1JFMS6aFo=; b=l0AdKnUW9Bz3+H
	icW8PzEnS+oDyQqWgDblc1d6xEoc+9vJHVGnQwwuTR+K2w2+xbmZLViYjCmdPx3wbeQLWKVgcGtQ6
	lPb0WrLiqIPSeljEvoO6ZWbtCsaLllM9QY0OpGFrulTd9Hr3xY1UjupgNX4dgktSVJzyEp7kuO/lO
	Et6geqKKzpumFIvkqJ6zcJFE2tl2AeQEA4Npq5H1XOl9ojULHnR/Qbc4ZMaNnAJ0pm3lBqRSHEpuz
	FK4DuU0Pz9zCMgfPowkujKc+PRe1td/YdErDXSu3+GHG7nRNcjOy+4FUuZpBeRTDZDTjPV7gTXPXK
	94FoOblpCfAnds7vsgXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPxSW-0000PU-1c; Sun, 19 Apr 2020 00:05:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPxS7-0007Gf-7L; Sun, 19 Apr 2020 00:04:52 +0000
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com
 [209.85.208.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BB0E021D91;
 Sun, 19 Apr 2020 00:04:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587254689;
 bh=v9pZ3WZNZEvx4oF1pGUXqLlB1PXbgAzl0qA9nRFRcew=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=JmENRTRR/USNvPNYSd3QE4+FFbWum08VUHzVCR0xqqMOsfxlw80sHuQjMYk+IPzxZ
 n7qqO+Oihe+J9oAyE9fSyjASwTbB+Tiex9woMXIlN/R+s9KIN2OJKC9a17yWwWq9nX
 zvhYMZICIRuwvd6QxgYUj61knbarD0zgX9/u1j/o=
Received: by mail-ed1-f51.google.com with SMTP id w2so4461921edx.4;
 Sat, 18 Apr 2020 17:04:48 -0700 (PDT)
X-Gm-Message-State: AGi0PubmXaLdwQsAV/kajsHogiZzjRHqg3hhx7KT83Yhvqaoa9L4l1JI
 xXVdpcYLO19WWOzsPQmaAvEnmzYeKDUMX0OzNQ==
X-Google-Smtp-Source: APiQypLh2svs6+HFQn0QDrjIM0+ZgyqnnZlhJlt1ICrnKga20H9COUuvFy8z5br34719WC7LFPwgTiemoWhvlZCmvEU=
X-Received: by 2002:aa7:c649:: with SMTP id z9mr8927514edr.288.1587254687117; 
 Sat, 18 Apr 2020 17:04:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200415011319.25559-1-jitao.shi@mediatek.com>
 <20200415011319.25559-2-jitao.shi@mediatek.com>
In-Reply-To: <20200415011319.25559-2-jitao.shi@mediatek.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Sun, 19 Apr 2020 08:04:34 +0800
X-Gmail-Original-Message-ID: <CAAOTY_9szPeYM=pDvC7Q-LheQ1dCvQisK8rAg0K-8a17hnoh=w@mail.gmail.com>
Message-ID: <CAAOTY_9szPeYM=pDvC7Q-LheQ1dCvQisK8rAg0K-8a17hnoh=w@mail.gmail.com>
Subject: Re: [PATCH v15 1/3] dt-bindings: display: mediatek: control dpi pins
 mode to avoid leakage
To: Jitao Shi <jitao.shi@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_170451_307800_ED99BFBA 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>, cawa.cheng@mediatek.com,
 CK Hu <ck.hu@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGksIEppdGFvOgoKSml0YW8gU2hpIDxqaXRhby5zaGlAbWVkaWF0ZWsuY29tPiDmlrwgMjAyMOW5
tDTmnIgxNeaXpSDpgLHkuIkg5LiK5Y2IOToxM+Wvq+mBk++8mgo+Cj4gQWRkIHByb3BlcnR5ICJw
aW5jdHJsLW5hbWVzIiB0byBzd2FwIHBpbiBtb2RlIGJldHdlZW4gZ3BpbyBhbmQgZHBpIG1vZGUu
IFNldAo+IHRoZSBkcGkgcGlucyB0byBncGlvIG1vZGUgYW5kIG91dHB1dC1sb3cgdG8gYXZvaWQg
bGVha2FnZSBjdXJyZW50IHdoZW4gZHBpCj4gZGlzYWJsZWQuCgpBcHBsaWVkIHRvIG1lZGlhdGVr
LWRybS1uZXh0IFsxXSwgdGhhbmtzLgoKWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcvcHViL3Nj
bS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQvbG9nLz9oPW1lZGlhdGVr
LWRybS1uZXh0CgpSZWdhcmRzLApDaHVuLUt1YW5nLgoKPgo+IEFja2VkLWJ5OiBSb2IgSGVycmlu
ZyA8cm9iaEBrZXJuZWwub3JnPgo+IFJldmlld2VkLWJ5OiBDaHVuLUt1YW5nIEh1IDxjaHVua3Vh
bmcuaHVAa2VybmVsLm9yZz4KPiBTaWduZWQtb2ZmLWJ5OiBKaXRhbyBTaGkgPGppdGFvLnNoaUBt
ZWRpYXRlay5jb20+Cj4gLS0tCj4gIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9k
aXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRwaS50eHQgfCA2ICsrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgNiBpbnNlcnRpb25zKCspCj4KPiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnR4dCBiL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kaXNwbGF5L21lZGlhdGVrL21lZGlhdGVrLGRw
aS50eHQKPiBpbmRleCA1ODkxNGNmNjgxYjguLjc3ZGVmNDQ1NjcwNiAxMDA2NDQKPiAtLS0gYS9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxheS9tZWRpYXRlay9tZWRpYXRl
ayxkcGkudHh0Cj4gKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3Bs
YXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnR4dAo+IEBAIC0xNyw2ICsxNyw5IEBAIFJlcXVpcmVk
IHByb3BlcnRpZXM6Cj4gICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2dyYXBo
LnR4dC4gVGhpcyBwb3J0IHNob3VsZCBiZSBjb25uZWN0ZWQKPiAgICB0byB0aGUgaW5wdXQgcG9y
dCBvZiBhbiBhdHRhY2hlZCBIRE1JIG9yIExWRFMgZW5jb2RlciBjaGlwLgo+Cj4gK09wdGlvbmFs
IHByb3BlcnRpZXM6Cj4gKy0gcGluY3RybC1uYW1lczogQ29udGFpbiAiZGVmYXVsdCIgYW5kICJz
bGVlcCIuCj4gKwo+ICBFeGFtcGxlOgo+Cj4gIGRwaTA6IGRwaUAxNDAxZDAwMCB7Cj4gQEAgLTI3
LDYgKzMwLDkgQEAgZHBpMDogZHBpQDE0MDFkMDAwIHsKPiAgICAgICAgICAgICAgICAgIDwmbW1z
eXMgQ0xLX01NX0RQSV9FTkdJTkU+LAo+ICAgICAgICAgICAgICAgICAgPCZhcG1peGVkc3lzIENM
S19BUE1JWEVEX1RWRFBMTD47Cj4gICAgICAgICBjbG9jay1uYW1lcyA9ICJwaXhlbCIsICJlbmdp
bmUiLCAicGxsIjsKPiArICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCIsICJzbGVlcCI7
Cj4gKyAgICAgICBwaW5jdHJsLTAgPSA8JmRwaV9waW5fZnVuYz47Cj4gKyAgICAgICBwaW5jdHJs
LTEgPSA8JmRwaV9waW5faWRsZT47Cj4KPiAgICAgICAgIHBvcnQgewo+ICAgICAgICAgICAgICAg
ICBkcGkwX291dDogZW5kcG9pbnQgewo+IC0tCj4gMi4xMi41Cj4gX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxp
c3QKPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbWVkaWF0ZWsgbWFpbGlu
ZyBsaXN0CkxpbnV4LW1lZGlhdGVrQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmlu
ZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo=
