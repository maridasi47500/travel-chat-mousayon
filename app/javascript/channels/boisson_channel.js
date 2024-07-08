import consumer from "channels/consumer"


consumer.subscriptions.create({ channel: "BoissonChannel", room: "azertyui" }, {
	          received(data) {
			                        this.appendLine(data)
			                      },

	          appendLine(data) {
			                    console.log(data)
			                        const html = this.createLine(data)
			                        const element = document.querySelector("[data-chat-table='boissons'] table")
			                         if (element){
							                       element.insertAdjacentHTML("beforeend", html)
							                        }
			                      },

	          createLine(data) {
			                        return `
						                            <tr class="chat-line">
									                                <td>
													                            	
																	&#9749;
																                                </td>
																				                                    <td class="speaker">${data["sent_by"]}</td>
																								                                                <td class="body">${data["body"]}</td>
																														                                                  </tr>
																																				                                                        `
			                      }
})
