Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4C51D31BE
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 15:47:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Date:Message-ID:From:To:Subject:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qRHSeGNubryY7/r5NEdeUexhuUCJewLMLp/MsC0zA7k=; b=n65ZR/LDTvTX44
	8vveKRJH8he+HPBrdkbjKWQPC4n0XTwU6nMhPcqDQJHVvYdbzzGZtVMxds+zWbDnmZ+d2FdpHRXyV
	LXO5dQ7YqmH1z44mkhgok4N6YGkVzw3w3udeCbI+QBxwf8An9ovxYfHZY6Kebibczov2Au/n5I/ns
	n9NiMA2bXtvuPxFllPw3UeyjPY6j6+WgmYigwyUKmPCIEacVK60jAzghyK/yn46xuoln+ALDv/dXU
	7zUh7L/vI6yjypipGE7ZdI8WhJHfkuhXdByIN35/1S26pxAEPRfO/ymuCBuoDSP3GH4oXlLolQTyy
	bURcCl60VYkWZRUb75Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZED3-0006tL-Kz; Thu, 14 May 2020 13:47:37 +0000
Received: from mailout1.w1.samsung.com ([210.118.77.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZECx-0006rp-G3
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 13:47:35 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout1.w1.samsung.com (KnoxPortal) with ESMTP id
 20200514134728euoutp01fb7d7d4d4ffd62c15a1dc625e2a247df~O6SGJxAy92977129771euoutp01B
 for <linux-mediatek@lists.infradead.org>; Thu, 14 May 2020 13:47:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.w1.samsung.com
 20200514134728euoutp01fb7d7d4d4ffd62c15a1dc625e2a247df~O6SGJxAy92977129771euoutp01B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1589464048;
 bh=kFo4YmJ95lBc3IqfS/RGPSyuKA+qhA+R/7/c5I3GdSc=;
 h=Subject:To:Cc:From:Date:In-Reply-To:References:From;
 b=YByCs44IqL+e9bIOfEbrQi2g6xlPzPNuR87Rt1x30KBRWl4XNTL7vOsa5PB24nnoV
 E8pEBoqi4aLV8vDqIsPPn56kRrcxDh+3Z31luxTI+zh8zaKw5ZgPolSjabmpn8NrZW
 iI2lyCrk3VacudWDa7Tg5OGrqqzLl6YuYi+T4QJU=
Received: from eusmges3new.samsung.com (unknown [203.254.199.245]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20200514134728eucas1p1a8fba306530ff2fa95aed3a78a097f94~O6SF0qhcz1217512175eucas1p1S;
 Thu, 14 May 2020 13:47:28 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges3new.samsung.com (EUCPMTA) with SMTP id 15.EC.60698.0FB4DBE5; Thu, 14
 May 2020 14:47:28 +0100 (BST)
Received: from eusmtrp1.samsung.com (unknown [182.198.249.138]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20200514134727eucas1p216a49cfa50a2e978e9619f1a1259110f~O6SFcLBzv2107921079eucas1p2b;
 Thu, 14 May 2020 13:47:27 +0000 (GMT)
Received: from eusmgms2.samsung.com (unknown [182.198.249.180]) by
 eusmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200514134727eusmtrp1d21bebb92a3d812ea44452e9b2558845~O6SFbVSvC0791107911eusmtrp11;
 Thu, 14 May 2020 13:47:27 +0000 (GMT)
X-AuditID: cbfec7f5-a0fff7000001ed1a-43-5ebd4bf00ecf
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms2.samsung.com (EUCPMTA) with SMTP id B9.D3.07950.FEB4DBE5; Thu, 14
 May 2020 14:47:27 +0100 (BST)
Received: from [106.210.85.205] (unknown [106.210.85.205]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200514134726eusmtip2818261053cb4457c1a810432d45e4601~O6SEeHbiw0440104401eusmtip2Q;
 Thu, 14 May 2020 13:47:26 +0000 (GMT)
Subject: Re: [GIT PULL] mediatek drm next for 5.8
To: Daniel Vetter <daniel@ffwll.ch>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Neil Armstrong
 <narmstrong@baylibre.com>, Sam Ravnborg <sam@ravnborg.org>
From: Andrzej Hajda <a.hajda@samsung.com>
Message-ID: <778afe30-d7e4-cb94-e01c-df5b5141900c@samsung.com>
Date: Thu, 14 May 2020 15:47:26 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAKMK7uHOPGBDs0EGn=rvafwRN9xyD6CDJAMFpO5AjiUJZ+X8_w@mail.gmail.com>
Content-Language: en-GB
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCKsWRmVeSWpSXmKPExsWy7djPc7ofvPfGGVx8xm/Re+4kk8XW/g52
 i/lH7jFbLOrtZbH4v20is8WVr+/ZLNbcPsRoMaF1O7NF87mrrBadE5ewW1xuvshocagv2mLF
 z62MFne+Pmdx4PN4f6OV3WN2w0UWjx13lzB67P22gMWj5chbVo/ZHTNZPTat6mTz2P7tAavH
 /e7jTB6bl9R7tJzcz+KxZNpVNo8NnzqYA3ijuGxSUnMyy1KL9O0SuDI+3P3LUtBoXdFwdB5z
 A+M07S5GDg4JAROJqdeDuhi5OIQEVjBKvPjczArhfGGUeHixjRHC+cwocWLiM6AMJ1hHw4Hv
 UInljBKti19COe8ZJTbsvcAGMldYwFBizTxPkLiIwGVGiZVt31hAHGaB2cwSH+/uZAMZxSag
 KfF3800wm1fATqLp2iIWkGYWAVWJL/dyQMKiArESpxdvZoQoEZQ4OfMJC4jNKRAosW5FA1gr
 s4C8RPPW2cwQtrhE05eVYD9ICCzkkPg1czULxNkuEo+Ob4SyhSVeHd/CDmHLSJye3AMVr5e4
 v6KFGaK5g1Fi64adzBAJa4k7536BfcYMdPT6XfoQYUeJ+zOfM0ICkk/ixltBiBv4JCZtm84M
 EeaV6GgTgqhWlLh/divUQHGJpRe+sk1gVJqF5LNZSL6ZheSbWQh7FzCyrGIUTy0tzk1PLTbO
 Sy3XK07MLS7NS9dLzs/dxAhMi6f/Hf+6g3Hfn6RDjAIcjEo8vA+u744TYk0sK67MPcQowcGs
 JMLrtx4oxJuSWFmVWpQfX1Sak1p8iFGag0VJnNd40ctYIYH0xJLU7NTUgtQimCwTB6dUA2O/
 yZqouTfsNdccCvl+mV1OQaoo6XelXFWm0uvJPOuYDOZPjk4J4XNWu/WlpG/mdGaHD2fkWhX0
 IjeY6yo+8DRq/50vLWoblf4s+ubDSd5BrcbxuWw1Z+wVNrX+9n0VsOeDSvH5tRqPXv2qv/zl
 cUSIuIr8YU8NPtefqfHWjcqW7x6vZRAqUGIpzkg01GIuKk4EAFbtX96HAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnleLIzCtJLcpLzFFi42I5/e/4Pd333nvjDF78N7HoPXeSyWJrfwe7
 xfwj95gtFvX2slj83zaR2eLK1/dsFmtuH2K0mNC6ndmi+dxVVovOiUvYLS43X2S0ONQXbbHi
 51ZGiztfn7M48Hm8v9HK7jG74SKLx467Sxg99n5bwOLRcuQtq8fsjpmsHptWdbJ5bP/2gNXj
 fvdxJo/NS+o9Wk7uZ/FYMu0qm8eGTx3MAbxRejZF+aUlqQoZ+cUltkrRhhZGeoaWFnpGJpZ6
 hsbmsVZGpkr6djYpqTmZZalF+nYJehkf7v5lKWi0rmg4Oo+5gXGadhcjJ4eEgIlEw4HvjF2M
 XBxCAksZJTaensIGkRCX2D3/LTOELSzx51oXG0TRW0aJtnlrmboYOTiEBQwl1szzBImLCFxk
 lHi2uZ8RpIFZYC6zxIXXxRAND5kkzk59ATaJTUBT4u/mm2AbeAXsJJquLWIBGcQioCrx5V4O
 SFhUIFZi9bVWRogSQYmTM5+wgNicAoES61Y0sEHMN5OYt/khM4QtL9G8dTaULS7R9GUl6wRG
 oVlI2mchaZmFpGUWkpYFjCyrGEVSS4tz03OLjfSKE3OLS/PS9ZLzczcxAhPBtmM/t+xg7HoX
 fIhRgINRiYfX4tbuOCHWxLLiytxDjBIczEoivH7rgUK8KYmVValF+fFFpTmpxYcYTYF+m8gs
 JZqcD0xSeSXxhqaG5haWhubG5sZmFkrivB0CB2OEBNITS1KzU1MLUotg+pg4OKUaGM2bCvKP
 qpzZfvaUyte/M8/LLBCQm6yj/6pP/FrjPdVVYqxzz01dmOLM5MYsL2+56pePwbRf+uzLb7T+
 P3XaJnpyOvPcG+eUXEVYgypCWtuSKx/05ZQyBzx/o3TM1WTd3ccX+K6xHH9R/vHA7WOK/897
 HI2TWhB/3Ge/nt6NS85sm2obCrVO5SmxFGckGmoxFxUnAgDI+dsyGgMAAA==
X-CMS-MailID: 20200514134727eucas1p216a49cfa50a2e978e9619f1a1259110f
X-Msg-Generator: CA
X-RootMTR: 20200514052534eucas1p14df3f06836fa87e13185e975357149f4
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20200514052534eucas1p14df3f06836fa87e13185e975357149f4
References: <CAAOTY_8gJNpWXcMnHiZzg_sgyiJ6BDsBYRxaLX0OXWRuLF1NCg@mail.gmail.com>
 <20200513194518.GN206103@phenom.ffwll.local>
 <CAAOTY_-77au87rXwULY4Ki4rShO8Pz9FUaoVHZh0DCjRfGroBA@mail.gmail.com>
 <CGME20200514052534eucas1p14df3f06836fa87e13185e975357149f4@eucas1p1.samsung.com>
 <CAKMK7uHOPGBDs0EGn=rvafwRN9xyD6CDJAMFpO5AjiUJZ+X8_w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_064731_673553_2EBD1D3E 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.11 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.11 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, David Airlie <airlied@linux.ie>,
 Bernard Zhao <bernard@vivo.com>, YueHaibing <yuehaibing@huawei.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Anand K Mistry <amistry@chromium.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

SGkgQWxsLAoKCk9uIDE0LjA1LjIwMjAgMDc6MjUsIERhbmllbCBWZXR0ZXIgd3JvdGU6Cj4gT24g
VGh1LCBNYXkgMTQsIDIwMjAgYXQgMTozMyBBTSBDaHVuLUt1YW5nIEh1IDxjaHVua3VhbmcuaHVA
a2VybmVsLm9yZz4gd3JvdGU6Cj4+IEhpLCBEYW5pZWw6Cj4+Cj4+IERhbmllbCBWZXR0ZXIgPGRh
bmllbEBmZndsbC5jaD4g5pa8IDIwMjDlubQ15pyIMTTml6Ug6YCx5ZubIOS4iuWNiDM6NDXlr6vp
gZPvvJoKPj4+IE9uIFRodSwgTWF5IDE0LCAyMDIwIGF0IDEyOjE2OjU5QU0gKzA4MDAsIENodW4t
S3VhbmcgSHUgd3JvdGU6Cj4+Pj4gSGksIERhdmUgJiBEYW5pZWw6Cj4+Pj4KPj4+PiBUaGlzIGlu
Y2x1ZGUgZHBpIHBpbiBtb2RlIHN3YXAsIGNvbmZpZyBtaXBpX3R4IGN1cnJlbnQgYW5kIGltcGVk
YW5jZSwKPj4+PiBjb252ZXJ0IG10ay1kcGkgdG8gZHJtX2JyaWRnZSBBUEksIGFuZCBzb21lIGZp
eHVwLgo+Pj4+Cj4+Pj4gVGhlIGZvbGxvd2luZyBjaGFuZ2VzIHNpbmNlIGNvbW1pdCA4ZjNkOWYz
NTQyODY3NDVjNzUxMzc0ZjVmMWZjYWZlZTZiM2YzMTM2Ogo+Pj4+ICAgIExpbnV4IDUuNy1yYzEg
KDIwMjAtMDQtMTIgMTI6MzU6NTUgLTA3MDApCj4+Pj4gYXJlIGF2YWlsYWJsZSBpbiB0aGUgR2l0
IHJlcG9zaXRvcnkgYXQ6Cj4+Pj4gICAgc3NoOi8vZ2l0QGdpdG9saXRlLmtlcm5lbC5vcmcvcHVi
L3NjbS9saW51eC9rZXJuZWwvZ2l0L2NodW5rdWFuZy5odS9saW51eC5naXQKPj4+PiB0YWdzL21l
ZGlhdGVrLWRybS1uZXh0LTUuOAo+Pj4gWW91ciBwdWxsIHJlcXVlc3QgaXMgYmFkbHkgbGluZSB3
cmFwcGVkLCBhbmQgSSBkb24ndCBoYXZlIGFuIHNzaCBhY2NvdW50Cj4+PiBvbiB0aGF0IG1hY2hp
bmUgLi4uIE1heWJlIGFpcmxpZWQgaGFzLCBub3Qgc3VyZS4gaHR0cDovLyBvciBnaXQ6Ly8gd291
bGQKPj4+IGJlIGEgYnVuY2ggZWFzaWVyLCBhbmQgdGhlbiBzaWduZWQgdGhhdC4gUGx1cyBpZiB5
b3VyIHB1bGwgaXNuJ3QKPj4+IGxpbmV3cmFwcGVkIHdlIGNhbiBzdHVmZiBpdCBkaXJlY3RseSBp
bnRvIHNjcmlwdHMuCj4+IFRoaXMgaXMgbXkgZmlyc3QgdGltZSB0byByZXF1ZXN0LXB1bGwgb24g
dGhhdCBzZXJ2ZXIsIEkgd291bGQgdHJ5IHRvCj4+IG1ha2UgdGhpbmdzIGVhc2llciBhbmQgcmVz
ZW5kIHJlcXVlc3QuCj4+Cj4+PiBBbGwgSSBxdWlja2x5IHdhbnRlZCB0byBxdWlja2x5IGNoZWNr
IGlzIHlvdXIgbmV3IGJyaWRnZSBkcml2ZXIuCj4+PiAtIHdhcyB0aGF0IHJldmlld2VkL2Fja2Vk
IGJ5IGJyaWRnZSBtYWludGFpbmVycz8gVGhlcmUncyBhIGxvdCBvZiByZXdvcmsKPj4+ICAgIGdv
aW5nIG9uIHJpZ2h0IG5vdywgbmVlZCB0byBtYWtlIHN1cmUgd2UncmUgbm90IGFkZGluZyBuZXcg
YnJpZGdlCj4+PiAgICBkcml2ZXJzIHRoYXQgdXNlIG9sZCBzdHlsZQo+Pj4KPj4+IC0gd2h5IGlz
IHRoaXMgYnJpZGdlIGRyaXZlciBub3QgaW4gZHJtL2JyaWRnZS8gZGlyZWN0b3J5Pwo+PiBJIGRv
ZXMgbm90IG5vdGljZSB0aGF0IGRybSBicmlkZ2UgaGFzIG1haW50YWluZXIsIEkgd291bGQgZHJv
cCBicmlkZ2UKPj4gc2VyaWVzIGZpcnN0LCBhbmQgd2FpdCBmb3IgYWNrIG9mIGJyaWRnZSBtYWlu
dGFpbmVyLgo+PiBtdGstZHBpIGlzIGFsc28gYSBkcm0gZW5jb2RlciwgYW5kIEkgZ3JlcCAnZHJt
X2JyaWRnZV9hZGQnIGFuZCBmaW5kCj4+IG1hbnkgb3V0IHNpZGUgb2YgYnJpZGdlIGZvbGRlciwg
c28gbWF5YmUgd2UgbmVlZCB0byBkaXNjdXNzIG1vcmUgYWJvdXQKPj4gdGhpcy4KPiBIbSBpbmRl
ZWQuIE1heWJlIHdlIG5lZWQgdG8gZXh0ZW5kIHRoZSBNQUlOVEFJTkVSUyBlbnRyeSBmb3IgYnJp
ZGdlcwo+IHNvIHRoYXQgaXQgbWF0Y2hlcyBicmlkZ2UgZHJpdmVycyBvdXRzaWRlIG9mIGRybS9i
cmlkZ2UuIFNvdW5kcyBsaWtlCj4gd2UgaGF2ZSB0b25zIG9mIHRob3NlIGFscmVhZHkuCj4KPiBB
bmRyemVqLCBOZWlsLCBMYXVyZW50LCBTYW0sIGFueSB0aG91Z2h0cz8KPgo+IEkgZ3Vlc3MgbWVh
bndoaWxlIHRoaXMgc2hvdWxkIGJlIG9rLgo+IC1EYW5pZWwKCgpBcyBJIGxvb2tlZCBhdMKgIG1h
dGNoaW5nIHJ1bGVzIGluIE1BSU5UQUlORVJTIGZpbGUgdGhlcmUgaXMgbm8gaWRlYWwgb25lIAp0
byBmdWxmaWwgdGhpcyB0YXNrLgoKTWF5YmUgdGhlIGNsb3Nlc3Qgb25lIGlzOiBLOiBkcm1fYnJp
ZGdlLgoKV291bGQgYmUgaWRlYWxseSB0byBleHRlbmQgRiBydWxlIHRvIG1hdGNoIGNvbnRlbnQg
b2YgZmlsZSwgZm9yIGV4YW1wbGU6CgpGOiBkcml2ZXJzL2dwdS9kcm0vI2RybV9icmlkZ2VfYWRk
IC0gbWF0Y2ggYWxsIGZpbGVzIGluIGRyaXZlcnMvZ3B1L2RybS8gCndpdGggY29udGVudCBtYXRj
aGluZyByZWdleCBkcm1fYnJpZGdlX2FkZC4KCgpBbnkgb3RoZXIgaWRlYXM/CgoKUmVnYXJkcwoK
QW5kcnplagoKCj4KPj4gUmVnYXJkcywKPj4gQ2h1bi1LdWFuZy4KPj4KPj4+IENoZWVycywgRGFu
aWVsCj4+Pgo+Pj4+IGZvciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAyM2IyOWZmOWYxM2E4
ZmI1YTEyYmU5ZmVkYjhiNjE0YjlkZWRlNDZhOgo+Pj4+ICAgIGRybS9tZWRpYXRlazogRWxpbWlu
YXRlIHRoZSBtYWdpYyBudW1iZXIgaW4gYXJyYXkgc2l6ZSAoMjAyMC0wNS0xMAo+Pj4+IDA5OjA4
OjMwICswODAwKQo+Pj4+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiBNZWRpYXRlayBEUk0gTmV4dCBmb3IgTGludXgg
NS44Cj4+Pj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQo+Pj4+IEFuYW5kIEsgTWlzdHJ5ICgxKToKPj4+PiAgICAgICAgZHJt
L21lZGlhdGVrOiBTdG9wIGl0ZXJhdGluZyBkbWEgYWRkcmVzc2VzIHdoZW4gc2dfZG1hX2xlbigp
ID09IDAKPj4+PiBCZXJuYXJkIFpoYW8gKDIpOgo+Pj4+ICAgICAgICBkcm0vbWVkaWF0ZWs6IENs
ZWFudXAgY29kaW5nIHN0eWxlIGluIG1lZGlhdGVrIGEgYml0Cj4+Pj4gICAgICAgIGRybS9tZWRp
YXRlazogRWxpbWluYXRlIHRoZSBtYWdpYyBudW1iZXIgaW4gYXJyYXkgc2l6ZQo+Pj4+IENodW4t
S3VhbmcgSHUgKDEpOgo+Pj4+ICAgICAgICBNZXJnZSB0YWcgJ3Y1LjctbmV4dC1kcm0tc3RhYmxl
JyBvZgo+Pj4+IHNzaDovL2dpdG9saXRlLmtlcm5lbC5vcmcvLi4uL21hdHRoaWFzLmJnZy9saW51
eCBpbnRvCj4+Pj4gbWVkaWF0ZWstZHJtLW5leHQKPj4+PiBFbnJpYyBCYWxsZXRibyBpIFNlcnJh
ICg3KToKPj4+PiAgICAgICAgZHQtYmluZGluZ3M6IG1lZGlhdGVrOiBVcGRhdGUgbW1zeXMgYmlu
ZGluZyB0byByZWZsZWN0IGl0IGlzIGEKPj4+PiBzeXN0ZW0gY29udHJvbGxlcgo+Pj4+ICAgICAg
ICBzb2MgLyBkcm06IG1lZGlhdGVrOiBNb3ZlIHJvdXRpbmcgY29udHJvbCB0byBtbXN5cyBkZXZp
Y2UKPj4+PiAgICAgICAgc29jIC8gZHJtOiBtZWRpYXRlazogRml4IG1lZGlhdGVrLWRybSBkZXZp
Y2UgcHJvYmluZwo+Pj4+ICAgICAgICBkcm0vbWVkaWF0ZWs6IFJlbW92ZSBkZWJ1ZyBtZXNzYWdl
cyBmb3IgZnVuY3Rpb24gY2FsbHMKPj4+PiAgICAgICAgZHJtL21lZGlhdGVrOiBtdGtfZHBpOiBS
ZW5hbWUgYnJpZGdlIHRvIG5leHRfYnJpZGdlCj4+Pj4gICAgICAgIGRybS9tZWRpYXRlazogbXRr
X2RwaTogQ29udmVydCB0byBicmlkZ2UgZHJpdmVyCj4+Pj4gICAgICAgIGRybS9tZWRpYXRlazog
bXRrX2RwaTogVXNlIHNpbXBsZSBlbmNvZGVyCj4+Pj4gSHNpbi1ZaSBXYW5nICgxKToKPj4+PiAg
ICAgICAgZHJtL21lZGlhdGVrOiBGaXggZGV2aWNlIHBhc3NlZCB0byBjbWRxCj4+Pj4gSml0YW8g
U2hpICg2KToKPj4+PiAgICAgICAgZHQtYmluZGluZ3M6IGRpc3BsYXk6IG1lZGlhdGVrOiBjb250
cm9sIGRwaSBwaW5zIG1vZGUgdG8gYXZvaWQgbGVha2FnZQo+Pj4+ICAgICAgICBkcm0vbWVkaWF0
ZWs6IHNldCBkcGkgcGluIG1vZGUgdG8gZ3BpbyBsb3cgdG8gYXZvaWQgbGVha2FnZSBjdXJyZW50
Cj4+Pj4gICAgICAgIGR0LWJpbmRpbmdzOiBkaXNwbGF5OiBtZWRpYXRlazogYWRkIHByb3BlcnR5
IHRvIGNvbnRyb2wgbWlwaSB0eAo+Pj4+IGRyaXZlIGN1cnJlbnQKPj4+PiAgICAgICAgZHQtYmlu
ZGluZ3M6IGRpc3BsYXk6IG1lZGlhdGVrOiBnZXQgbWlwaXR4IGNhbGlicmF0aW9uIGRhdGEgZnJv
bSBudm1lbQo+Pj4+ICAgICAgICBkcm0vbWVkaWF0ZWs6IGFkZCB0aGUgbWlwaXR4IGRyaXZpbmcg
Y29udHJvbAo+Pj4+ICAgICAgICBkcm0vbWVkaWF0ZWs6IGNvbmZpZyBtaXBpdHggaW1wZWRhbmNl
IHdpdGggY2FsaWJyYXRpb24gZGF0YQo+Pj4+IE1hdHRoaWFzIEJydWdnZXIgKDIpOgo+Pj4+ICAg
ICAgICBkcm0vbWVkaWF0ZWs6IE9taXQgd2FybmluZyBvbiBwcm9iZSBkZWZlcnMKPj4+PiAgICAg
ICAgY2xrIC8gc29jOiBtZWRpYXRlazogTW92ZSBtdDgxNzMgTU1TWVMgdG8gcGxhdGZvcm0gZHJp
dmVyCj4+Pj4gWXVlSGFpYmluZyAoMSk6Cj4+Pj4gICAgICAgIGRybS9tZWRpYXRlazogRml4IEtj
b25maWcgd2FybmluZwo+Pj4+ICAgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Fy
bS9tZWRpYXRlay9tZWRpYXRlayxtbXN5cy50eHQgICB8ICAgNyArLQo+Pj4+ICAgRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2Rpc3BsYXkvbWVkaWF0ZWsvbWVkaWF0ZWssZHBpLnR4
dCB8ICAgNiArCj4+Pj4gICBEb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvZGlzcGxh
eS9tZWRpYXRlay9tZWRpYXRlayxkc2kudHh0IHwgIDEwICsrCj4+Pj4gICBkcml2ZXJzL2Nsay9t
ZWRpYXRlay9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICA3ICsKPj4+PiAgIGRyaXZlcnMvY2xrL21lZGlhdGVrL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwo+Pj4+ICAgZHJpdmVycy9jbGsvbWVkaWF0
ZWsvY2xrLW10ODE3My1tbS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4g
MTQ2ICsrKysrKysrKysrKysrKysrKysKPj4+PiAgIGRyaXZlcnMvY2xrL21lZGlhdGVrL2Nsay1t
dDgxNzMuYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4+IDEwNCAtLS0t
LS0tLS0tLS0tLQo+Pj4+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL0tjb25maWcgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAgMSArCj4+Pj4gICBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2Rpc3BfY29sb3IuYyAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICA1ICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rpc3Bfb3ZsLmMgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1ICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0v
bWVkaWF0ZWsvbXRrX2Rpc3BfcmRtYS5jICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA1
ICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RwaS5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHwKPj4+PiAxMjcgKysrKysrKysrKy0tLS0tLS0KPj4+PiAg
IGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHJtX2NydGMuYyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgfCAgMjcgKystLQo+Pj4+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kcm1fZGRwLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8Cj4+Pj4gMjU5ICstLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRp
YXRlay9tdGtfZHJtX2RkcC5oICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDcgLQo+
Pj4+ICAgZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kcm1fZHJ2LmMgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICB8Cj4+Pj4gICA1MCArKystLS0tCj4+Pj4gICBkcml2ZXJzL2dwdS9k
cm0vbWVkaWF0ZWsvbXRrX2RybV9kcnYuaCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAyICstCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RybV9nZW0uYyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAzICsKPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9t
ZWRpYXRlay9tdGtfZHNpLmMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDgg
Ky0KPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgMjIgKystCj4+Pj4gICBkcml2ZXJzL2dwdS9kcm0vbWVk
aWF0ZWsvbXRrX21pcGlfdHguYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwKPj4+PiAg
IDU0ICsrKysrKysKPj4+PiAgIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfbWlwaV90eC5o
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKwo+Pj4+ICAgZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19tdDgxODNfbWlwaV90eC5jICAgICAgICAgICAgICAgICAgICAgICB8
ICAyOCArKysrCj4+Pj4gICBkcml2ZXJzL3NvYy9tZWRpYXRlay9LY29uZmlnICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA4ICsrCj4+Pj4gICBkcml2ZXJzL3NvYy9t
ZWRpYXRlay9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwg
ICAxICsKPj4+PiAgIGRyaXZlcnMvc29jL21lZGlhdGVrL210ay1tbXN5cy5jICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgfAo+Pj4+IDMzNyArKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKwo+Pj4+ICAgaW5jbHVkZS9saW51eC9zb2MvbWVkaWF0ZWsv
bXRrLW1tc3lzLmggICAgICAgICAgICAgICAgICAgICAgICAgICAgICB8ICAyMCArKysKPj4+PiAg
IDI3IGZpbGVzIGNoYW5nZWQsIDc3OCBpbnNlcnRpb25zKCspLCA0NzYgZGVsZXRpb25zKC0pCj4+
Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9jbGsvbWVkaWF0ZWsvY2xrLW10ODE3My1t
bS5jCj4+Pj4gICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9zb2MvbWVkaWF0ZWsvbXRrLW1t
c3lzLmMKPj4+PiAgIGNyZWF0ZSBtb2RlIDEwMDY0NCBpbmNsdWRlL2xpbnV4L3NvYy9tZWRpYXRl
ay9tdGstbW1zeXMuaAo+Pj4gLS0KPj4+IERhbmllbCBWZXR0ZXIKPj4+IFNvZnR3YXJlIEVuZ2lu
ZWVyLCBJbnRlbCBDb3Jwb3JhdGlvbgo+Pj4gaHR0cHM6Ly9wcm90ZWN0Mi5maXJlZXllLmNvbS91
cmw/az02YjNjZDk1MC0zNmY3NWU2ZS02YjNkNTIxZi0wY2M0N2EzMTMwOWEtNzhjMjdiNDM0MTJj
ZDkyNyZxPTEmdT1odHRwJTNBJTJGJTJGYmxvZy5mZndsbC5jaCUyRgo+Cj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
